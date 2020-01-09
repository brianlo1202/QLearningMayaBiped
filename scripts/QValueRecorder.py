import pickle
import os
import os.path
from os import path

initVal = 1000000

#set working directory

class QValueRecorder:
    #key = (State, Action)
    #value = int
    
    #constructor: pass in folder path to write to
    def __init__(self, writePath):
        newWorkingDirectory = writePath
        os.chdir(newWorkingDirectory)
        self.recorder = {}
        
    def get(self, key):
        if key in self.recorder:
            return self.recorder[key]
        else:
            return initVal
           
    def set(self, key, value):
        self.recorder[key] = value
        
    def save(self):
        with open('qVals' + '.pkl', 'wb') as f:
            pickle.dump(self.recorder, f, pickle.HIGHEST_PROTOCOL)

    def savedRecordExists(self):
        return path.exists("qVals.pkl")
        
    def load(self):
        if self.savedRecordExists():
            with open('qVals' + '.pkl', 'rb') as f:
                self.recorder = pickle.load(f)
            print "loaded qVal record with {} entries".format(len(self.recorder))
        else:
            print "NO SAVED qVals FOUND, CONTINUE"
            
    def maxQAtState(self, s):
        nextPossibleActions = s.getNextPossibleActions()
        qVals = [self.get((s, action)) for action in nextPossibleActions]
        return max(qVals)        
        
        
#DON'T RUN OR WILL OVERRIDE SAVED DATA
def test():
    key1 = (State(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), Action(320,320,320,320,320,320,320))
    key2 = (State(0,5,3,4,5,6,7,8,9,19,12,12,13,14,15,16), Action(120,320,320,320,320,320,320))
    
    qRecorder = QValueRecorder("/Users/brianlo/Documents/maya/projects/QLearningBipedWalker/scripts")
    if qRecorder.get(key1) != 1000000:
        print "ERROR: DEFAULT VALUES SHOULD BE 1000000"
    else:
        print "DEFAULT VALUE TEST PASSED :)"
    qRecorder.set(key1, 1)
    if qRecorder.get(key1) != 1:
        print "ERROR: GETTING KEY 1"
    elif qRecorder.get((State(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), Action(320,320,320,320,320,320,320))) != 1:
        print "ERROR: GETTING KEY 2"
    else:
        print "get tests passed :)"
    
    qRecorder.set(key2, 89)
    qRecorder.save()
    
    print
    print "saved dictionary: "
    print [str(key[0]) + " " + str(key[1]) for key in qRecorder.recorder.keys()]
    print [str(value) for value in qRecorder.recorder.values()]
    
    qRecorder2 = QValueRecorder("/Users/brianlo/Documents/maya/projects/QLearningBipedWalker/scripts")
    qRecorder2.load()
    print "loaded dictionary: (should match saved)"
    print [str(key[0]) + " " + str(key[1]) for key in qRecorder2.recorder.keys()]
    print [str(value) for value in qRecorder2.recorder.values()]
    
    print
    print "default test on loaded dict: (should be 1mil)"
    print qRecorder2.get((State(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), Action(80,320,320,320,320,320,320)))   
    
    print "{} should be true".format(qRecorder2.savedRecordExists())   
    
    print
    key3 = (State(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), Action(320,320,320,320,320,320,320))
    v3 = qRecorder2.get(key3)
    if not v3 == 1:
        print "EQUVALENT STATES TEST FAILED"
    else:
        print "EQUIVALENCE STATES TEST PASSED"
        
    print "testing max Q"
    print qRecorder.maxQAtState(State(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16))

print
test()
qr = QValueRecorder("/Users/brianlo/Documents/maya/projects/QLearningBipedWalker/scripts")
qr.load()
print [str(key[0]) + " " + str(key[1]) for key in qr.recorder.keys()]
print [str(value) for value in qr.recorder.values()]
