class Action:
    def __init__(self, leftThighSpeed, rightThighSpeed, leftKneeSpeed, rightKneeSpeed):
        self.leftThighSpeed = leftThighSpeed
        self.rightThighSpeed = rightThighSpeed
        self.leftKneeSpeed = leftKneeSpeed
        self.rightKneeSpeed = rightKneeSpeed
        
    def __hash__(self):
        return hash((self.leftThighSpeed, self.rightThighSpeed, self.leftKneeSpeed, self.rightKneeSpeed))
        
    def __eq__(self, other):
        me = (self.leftThighSpeed, self.rightThighSpeed, self.leftKneeSpeed, self.rightKneeSpeed)
        him = (other.leftThighSpeed, other.rightThighSpeed, other.leftKneeSpeed, other.rightKneeSpeed)
        
        return me == him
        
    def __str__(self):
        return "action: ({}, {}, {}, {})".format(self.leftThighSpeed, self.rightThighSpeed, self.leftKneeSpeed, self.rightKneeSpeed)
        
#tests
a1 = Action(80, 79, 78, 77)
a2 = Action(80, 79, 78, 77)
a3 = Action(80, 79, 78, 76)

print str(a1)

if not hash(a1) == hash(a2):
    print "ERROR: HASH SHOULD BE SAME"
elif not a1 == a2:
    print "ERROR: SHOULD BE EQUAL"
else:
    print "PASSED: All test cases"