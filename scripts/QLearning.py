#Standing Version!!
import random
import time
import math

E = 0.0 #exploration rate
a = 0.5 #learning rate
y = 1.0
speed = 0.041 #time between frames (0.041 is real time 24 fps)

#sim will stop if programTimeLimit OR maxIterations are met
inf = float('inf') #in case u need it
programTimeLimit = 1*30*60 #seconds
maxIterations = inf

endAnimFrame = 384

initVal = 1000000


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
def timeRemaining():
    return programTimeLimit - (time.time() - startTime)
    
def timeElapsed():
    return (time.time() - startTime)
    
def currentTimeInSec():
    return cmds.currentTime( query=True ) / 24.0 
    
def currentFrame():
    return cmds.currentTime( query=True )
    
def atEndAnimFrame():
    currentFrame = cmds.currentTime( query=True )
    return currentFrame >= endAnimFrame

def chooseUntakenAction(s, qr):
    nextPossibleActions = s.getNextPossibleActions()

    untakenActions = [a for a in nextPossibleActions if qr.get((s,a)) == initVal]
    
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
        
def feetUnderBody(crawler):
    bodySensor = crawler.transSensors[0]
    foot1Sensor = crawler.transSensors[1]
    foot2Sensor = crawler.transSensors[2]
    
    bodyXZPos = (bodySensor.readX(), bodySensor.readZ())
    
    feetAvgX = (foot1Sensor.readX() + foot2Sensor.readX()) / 2.0
    feetAvgZ = (foot1Sensor.readZ() + foot2Sensor.readZ()) / 2.0
    
    feetAvgPos = (feetAvgX, feetAvgZ)
    
    bodyFeetDiff = (bodyXZPos[0] - feetAvgPos[0], bodyXZPos[1] - feetAvgPos[1])
    
    diffMag = math.sqrt( bodyFeetDiff[0] ** 2 + bodyFeetDiff[1] ** 2 )
    
    return diffMag < 0.4
           
def main():
    global E
    
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
            
        #print str(action)
        
        #take action for 1 frames
        crawler.takeAction(action)
        wait(speed)
        crawler.takeAction(action)
        wait(speed)
        
        #q update
        s = currentState
        sPrime = crawler.getCurrentState()
        
        deathSensorReadings = [sensor.read() for sensor in crawler.deathSensors]
        dead = any(deathSensorReadings)
        
        #reward for living
        r = 0
        if dead:
            r = -1000000
        else:
            if feetUnderBody(crawler):
                
                #exponential reward for standing
                r = currentFrame() ** 2 
 
                #reward for moving body up
                #prevHeight = s.bodyTrans
                #currentHeight = sPrime.bodyTrans
                
                #if currentHeight >= prevHeight:
                #    r *= 2
                #else:
                #    r /= 2
                
            else:
                r = 0
                
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
            print "{} seconds left".format(int(timeRemaining()))
            print
            dead = False
            
            print "E = {}".format(E)
            print
            
            if timeElapsed() > 7200:
                E = 0.2
            
            resetSim(crawler)

              
            
        
    #save all data
    qr.save()
    #set all motors to 0 speed
    everythingOff = Action(0,0,0,0)
    crawler.takeAction(everythingOff)
    
    print "QLearning Terminated"
main()