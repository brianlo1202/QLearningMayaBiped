#position of the body is ignored when comparing states; only angles of motors matter
maxMotorSpeedMag = 512
class State:
    #16 params
    def __init__(self, bodyTrans, bodyRot, leftThighRot, rightThighRot, leftKneeRot, rightKneeRot, leftAnkleRot, rightAnkleRot, torsoRot, leftThighSpeed, rightThighSpeed, leftKneeSpeed, rightKneeSpeed, leftAnkleSpeed, rightAnkleSpeed, torsoSpeed):
        self.bodyTrans = bodyTrans
        self.bodyRot = bodyRot
        
        self.leftThighRot = leftThighRot
        self.rightThighRot = rightThighRot
        self.leftKneeRot = leftKneeRot
        self.rightKneeRot = rightKneeRot
        
        self.leftAnkleRot = leftAnkleRot
        self.rightAnkleRot = rightAnkleRot
        self.torsoRot = torsoRot
        
        self.leftThighSpeed = leftThighSpeed
        self.rightThighSpeed = rightThighSpeed
        self.leftKneeSpeed = leftKneeSpeed
        self.rightKneeSpeed = rightKneeSpeed
        
        self.leftAnkleSpeed = leftAnkleSpeed
        self.rightAnkleSpeed = rightAnkleSpeed
        self.torsoSpeed = torsoSpeed
        
    #note to self: clockwise is positive
    #thighs, knees, ankles, torso
    def getNextPossibleActions(self):
        speedOpts = [maxMotorSpeedMag, -maxMotorSpeedMag]
        aParams = [( (s1, s2), (s3, s4), s5, s6, s7, s8, (s9 , s10) ) for s1 in speedOpts for s2 in speedOpts for s3 in speedOpts for s4 in speedOpts for s5 in speedOpts for s6 in speedOpts for s7 in speedOpts for s8 in speedOpts for s9 in speedOpts for s10 in speedOpts]        
        
        actions = [Action(p[0], p[1], p[2], p[3], p[4], p[5], p[6]) for p in aParams]
        
        return actions
       
        
    def __str__(self):
        return "state: {} {} | {} {} {} {} {} {} {} | {} {} {} {} {} {} {}".format(self.bodyTrans, self.bodyRot, self.leftThighRot, self.rightThighRot, self.leftKneeRot, self.rightKneeRot, self.leftAnkleRot, self.rightAnkleRot, self.torsoRot, self.leftThighSpeed, self.rightThighSpeed, self.leftKneeSpeed, self.rightKneeSpeed, self.leftAnkleSpeed, self.rightAnkleSpeed, self.torsoSpeed)
        
    def __hash__(self):
        return hash((self.bodyTrans, self.bodyRot, self.leftThighRot, self.rightThighRot, self.leftKneeRot, self.rightKneeRot, self.leftAnkleRot, self.rightAnkleRot, self.torsoRot, self.leftThighSpeed, self.rightThighSpeed, self.leftKneeSpeed, self.rightKneeSpeed, self.leftAnkleSpeed, self.rightAnkleSpeed, self.torsoSpeed))
        
    def __eq__(self, other):
        me = (self.bodyTrans, self.bodyRot, self.leftThighRot, self.rightThighRot, self.leftKneeRot, self.rightKneeRot, self.leftAnkleRot, self.rightAnkleRot, self.torsoRot, self.leftThighSpeed, self.rightThighSpeed, self.leftKneeSpeed, self.rightKneeSpeed, self.leftAnkleSpeed, self.rightAnkleSpeed, self.torsoSpeed)
        him = (other.bodyTrans, other.bodyRot, other.leftThighRot, other.rightThighRot, other.leftKneeRot, other.rightKneeRot, other.leftAnkleRot, other.rightAnkleRot, other.torsoRot, other.leftThighSpeed, other.rightThighSpeed, other.leftKneeSpeed, other.rightKneeSpeed, other.leftAnkleSpeed, other.rightAnkleSpeed, other.torsoSpeed)
        
        return me == him
     
#tests
print
s = State(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
s2 = State(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
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