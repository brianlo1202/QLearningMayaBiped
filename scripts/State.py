#position of the body is ignored when comparing states; only angles of motors matter
maxMotorSpeedMag = 1024
class State:
    #10 params
    def __init__(self, bodyTrans, bodyRot, leftThighRot, rightThighRot, leftKneeRot, rightKneeRot, leftThighSpeed, rightThighSpeed, leftKneeSpeed, rightKneeSpeed):
        self.bodyTrans = bodyTrans
        self.bodyRot = bodyRot
        
        self.leftThighRot = leftThighRot
        self.rightThighRot = rightThighRot
        self.leftKneeRot = leftKneeRot
        self.rightKneeRot = rightKneeRot
        
        self.leftThighSpeed = leftThighSpeed
        self.rightThighSpeed = rightThighSpeed
        self.leftKneeSpeed = leftKneeSpeed
        self.rightKneeSpeed = rightKneeSpeed
        
    #note to self: clockwise is positive
    def getNextPossibleActions(self):
        speedOpts = [maxMotorSpeedMag, -maxMotorSpeedMag]
        aParams = [(s1, s2, s3, s4) for s1 in speedOpts for s2 in speedOpts for s3 in speedOpts for s4 in speedOpts]        
        
        actions = [Action(p[0], p[1], p[2], p[3]) for p in aParams]
        
        return actions
       
        
    def __str__(self):
        return "state: {} {} | {} {} {} {} {} {} {} {}".format(self.bodyTrans, self.bodyRot, self.leftThighRot, self.rightThighRot, self.leftKneeRot, self.rightKneeRot, self.leftThighSpeed, self.rightThighSpeed, self.leftKneeSpeed, self.rightKneeSpeed)
        
    def __hash__(self):
        return hash((self.bodyRot, self.leftThighRot, self.rightThighRot, self.leftKneeRot, self.rightKneeRot, self.leftThighSpeed, self.rightThighSpeed, self.leftKneeSpeed, self.rightKneeSpeed))
        
    def __eq__(self, other):
        me = (self.bodyRot, self.leftThighRot, self.rightThighRot, self.leftKneeRot, self.rightKneeRot, self.leftThighSpeed, self.rightThighSpeed, self.leftKneeSpeed, self.rightKneeSpeed)
        him = (other.bodyRot, other.leftThighRot, other.rightThighRot, other.leftKneeRot, other.rightKneeRot, other.leftThighSpeed, other.rightThighSpeed, other.leftKneeSpeed, other.rightKneeSpeed)
        
        return me == him
     
#tests
print
s = State(1,2,3,4,5,6,7,8,9,10)
s2 = State(22,2,3,4,5,6,7,8,9,10)
print "state 1: " + str(s)
print "state 2: " + str(s2)
hash1 = hash(s)
hash2 = hash(s2)
if not hash1 == hash2:
    print "ERROR: HASHES SHOULD BE THE SAME"
else:
    print "HASH TEST PASSED :)"
    
if s == s2:
    print "EQUALITY TEST PASSED :)"
else:
    print "ERROR: STATES SHOULD BE THE SAME :("
    
print "next possible actions: "
print [str(action) for action in s.getNextPossibleActions()]
print [str(action) for action in s2.getNextPossibleActions()]