import maya.cmds as cmds

class Walker:
    #creates new Walker with specified string name
    #creates motor object for all motors in scene
    #motors must be named motor1, motor2 ...
    #creates sensor object for all sensors in scene
    #sensors must be named sensor_rotate_description or sensor_translate_description
    #(description can be anything)
    
    #States are in increments of 10 degrees
    #clockwise is positive
    #forward direction is positive
    def __init__(self, name):
        self.name = name
        
        #make list of motors, set all to 0 speed
        motorList = cmds.ls( 'motor*')
        self.motors = [Motor(motor) for motor in motorList if "Shape" in motor and not "Constraint" in motor]
                
        #make list of rotation sensors
        rotationSensorsList = cmds.ls( 'sensor_rotation*')
        self.rotSensors = [Sensor_Rotation(sensor) for sensor in rotationSensorsList if not "Shape" in sensor and not "Constraint" in sensor]
        
        #make list of translate sensors
        transSensorsList = cmds.ls( 'sensor_translate*')
        self.transSensors = [Sensor_Translate(sensor) for sensor in transSensorsList if not "Shape" in sensor and not "Constraint" in sensor]
        
    def roundDown10(self, value):
        if value >= 0:
            return int(value - value % 10)
        else:
            return int(value + -1 * value % 10)
            
    def getCurrentState(self):
        bodyTrans = self.transSensors[0].read()
        bodyRot = self.roundDown10(self.rotSensors[0].read())
        
        lThighRot = self.roundDown10(self.rotSensors[1].read())
        rThighRot = self.roundDown10(self.rotSensors[2].read())
        lKneeRot = self.roundDown10(self.rotSensors[3].read())
        rKneeRot = self.roundDown10(self.rotSensors[4].read())
        
        lThighSpeed = self.roundDown10(self.motors[0].getSpeed())
        rThighSpeed = self.roundDown10(self.motors[1].getSpeed())
        lKneeSpeed = self.roundDown10(self.motors[2].getSpeed())
        rKneeSpeed = self.roundDown10(self.motors[3].getSpeed())
        
        return State(bodyTrans, bodyRot, lThighRot, rThighRot, lKneeRot, rKneeRot, lThighSpeed, rThighSpeed, lKneeSpeed, rKneeSpeed)
    
    def nextFrame(self):
        currentFrame = cmds.currentTime( query=True )
        nextFrame = currentFrame + 1;
        cmds.currentTime( nextFrame, edit=True )
        
    def takeAction(self, action):
        self.motors[0].setSpeed(action.leftThighSpeed)
        self.motors[1].setSpeed(action.rightThighSpeed)
        self.motors[2].setSpeed(action.leftKneeSpeed)
        self.motors[3].setSpeed(action.rightKneeSpeed)
        self.nextFrame()
     
#tests
crawler = Walker("crawler");
print "motors:"
print [str(motor) for motor in crawler.motors]
print "rot sensors:"
print [str(sensor) for sensor in crawler.rotSensors]
print "trans sensors:"
print [str(sensor) for sensor in crawler.transSensors]

print
print "set motors to 0"
a = Action(0, 0, 0, 0)
crawler.takeAction(a)
print "current state:"
print crawler.getCurrentState()

print "set motors to max and min"
a = Action(320, -320, 320, -320)
crawler.takeAction(a)
print "current state:"
print crawler.getCurrentState()


