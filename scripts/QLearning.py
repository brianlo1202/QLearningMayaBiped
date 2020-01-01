#Standing Version!!
import random
import time

E = 1.0 #exploration rate
a = 0.5 #learning rate
y = 1.0
speed = 0.041 #time between frames (0.041 is real time 24 fps)

#sim will stop if programTimeLimit OR maxIterations are met
inf = float('inf') #in case u need it
programTimeLimit = 10 #seconds
maxIterations = inf

endAnimFrame = 384


def timeToExplore(E):
    randNum = random.random()
    return randNum <= E
    
def wait(secs):
    time.sleep(secs)
    
def nextFrame():
    currentFrame = cmds.currentTime( query=True )
    nextFrame = currentFrame + 1;
    cmds.currentTime( nextFrame, edit=True )
  
startTime = -1 
def timerStart():
    global startTime
    startTime = time.time()
    
def timeIsUp():
    return (time.time() - startTime) > programTimeLimit
    
def currentTimeInSec():
    return cmds.currentTime( query=True ) / 24.0 
def atEndAnimFrame():
    currentFrame = cmds.currentTime( query=True )
    return currentFrame >= endAnimFrame

def chooseUntakenAction(s, qr):
    nextPossibleActions = s.getNextPossibleActions()

    untakenActions = [a for a in nextPossibleActions if qr.get((s,a)) == 0]
    
    if len(untakenActions) == 0: #choose from non max actions if none unexplored
        maxQ = max([qr.get((s,a)) for a in nextPossibleActions])
        nonMaxActions = [a for a in nextPossibleActions if qr.get((s,a)) != maxQ]
        try:
            return random.choice(nonMaxActions)
        except: #just return random choice if still error
            return random.choice(nextPossibleActions)
    else:   
        return random.choice(untakenActions)
    
def chooseBestAction(s, qr):
    nextPossibleActions = s.getNextPossibleActions()
    
    maxQ = max([qr.get((s,a)) for a in nextPossibleActions])
    #print "exploited Q: {}".format(maxQ)
    maxActions = [a for a in nextPossibleActions if qr.get((s,a)) == maxQ]
    return random.choice(maxActions)
    
def resetSim(crawler):
     #set all motors to 0 speed
    everythingOff = Action(0,0,0,0)
    crawler.takeAction(everythingOff)
    
    #set frame to 1
    cmds.currentTime( 1, edit=True )
    
    #waitForModelToSettle()

def waitForModelToSettle():
    print "waiting for model to settle..."
    while cmds.currentTime( query=True ) < 48:
        nextFrame()
        wait(speed)
           
def main():
    
    #set to frame 1
    cmds.currentTime(1, edit=True )
    
    #waitForModelToSettle()
    
    #create walker
    crawler = Walker("crawler")
    currentState = crawler.getCurrentState()
    qr = QValueRecorder("/Users/brianlo/Documents/maya/projects/QLearningBipedWalker/scripts")
    qr.load() #load saved data if exists
    
    
    #possible restart state stuff
    restartNeeded = False
    dead = False
    
    #timers
    timerStart()
    currentIteration = 0
    
    while not timeIsUp() and currentIteration < maxIterations:
        nextPossibleActions = currentState.getNextPossibleActions()
        
        action = None
        
        if timeToExplore(E):
            #print "explore"
            action = chooseUntakenAction(currentState, qr)
        else: #exploit
            #print "exploit"
            action = chooseBestAction(currentState, qr)
            
        crawler.takeAction(action)
        wait(speed)
        
        #q update
        s = currentState
        sPrime = crawler.getCurrentState()
        
        deathSensorReadings = [sensor.read() for sensor in crawler.deathSensors]
        dead = any(deathSensorReadings)
        
        r = 0
        if dead:
            r = -1000000
        else:
            r = currentTimeInSec()
            
            
        print str(r)
 
 
        sample = r + y*qr.maxQAtState(sPrime)
        
        newQVal = (1-a) * qr.get((s,action)) + a * sample
                
        qr.set((s, action), newQVal) 
        
        
        #update current state
        currentState = sPrime
        
        #reset and save if end of anim or dead
        if atEndAnimFrame() or dead:

            currentIteration += 1
            print "iteration {} of {} complete".format(currentIteration, maxIterations)
            print
            resetSim(crawler)
            dead = False
              
            qr.save()
        
     
    #set all motors to 0 speed
    everythingOff = Action(0,0,0,0)
    crawler.takeAction(everythingOff)
    
    print "QLearning Terminated"
main()