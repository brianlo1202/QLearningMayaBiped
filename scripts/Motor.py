class Motor:
    #pass in name of shape node
    def __init__(self, name):
        self.name = name
    
    def getSpeed(self):
        speed = cmds.getAttr( self.name + ".angularMotorTargetSpeedZ")
        return speed
    def getSpeedX(self):
        speed = cmds.getAttr( self.name + ".angularMotorTargetSpeedX")
        return speed
    def getSpeedZ(self):
        speed = cmds.getAttr( self.name + ".angularMotorTargetSpeedZ")
        return speed
        
    def setSpeed(self, newSpeed):
        cmds.setAttr( self.name + ".angularMotorTargetSpeedZ", newSpeed)
    def setSpeed2D(self, newSpeeds):
        cmds.setAttr( self.name + ".angularMotorTargetSpeedX", newSpeeds[0])
        cmds.setAttr( self.name + ".angularMotorTargetSpeedZ", newSpeeds[1])
        
    def __str__(self):
        return self.name + " (current speed: " + str(self.getSpeed()) + ")"
        
#test Motor
print
m1 = Motor("motor4_knee_rightShape")
print "testing" + str(m1)
currentSpeed = m1.getSpeed()
newSpeed = currentSpeed + 1
m1.setSpeed(newSpeed)
print "set speed from {} to {}".format(currentSpeed, newSpeed)
print "result: {}".format(str(m1))
if (m1.getSpeed() != newSpeed):
    print "ERROR IN MOTOR CLASS"
else:
    print "PASSED: setSpeed TEST CASES !!!"