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
        
        #make list of death sensors
        deathSensorsList = cmds.ls( 'sensor_death*')
        self.deathSensors = [Sensor_Death(sensor) for sensor in deathSensorsList if not "Shape" in sensor and not "Constraint" in sensor]
        
        
    def roundDown(self, value):
        if value >= 0:
            return int(value - value % 10)
        else:
            return int(value + -1 * value % 10)
            
    def roundDownDec(self, value):
        if value >= 0:
            return value - value % 0.2
        else:
            return value + -1 * value % 0.2
            
    def roundDown20(self, value):
        if value >= 0:
            return int(value - value % 20)
        else:
            return int(value + -1 * value % 20)
            
    def getCurrentState(self):
        bodyTrans = self.roundDownDec(self.transSensors[0].readY())
        
        bodyRotX = self.roundDown(self.rotSensors[0].readX())
        bodyRotY = self.roundDown(self.rotSensors[0].readY())
        bodyRotZ = self.roundDown(self.rotSensors[0].read())
        bodyRot = (bodyRotX, bodyRotY, bodyRotZ)
        
        #other rot
        
        lThighRotX = self.roundDown(self.rotSensors[1].readX())
        lThighRotZ = self.roundDown(self.rotSensors[1].readZ())
        lThighRot = (lThighRotX, lThighRotZ)
        
        rThighRotX = self.roundDown(self.rotSensors[2].readX())
        rThighRotZ = self.roundDown(self.rotSensors[2].readZ())
        rThighRot = (rThighRotX, rThighRotZ)
        
        lKneeRot = self.roundDown(self.rotSensors[3].read())
        rKneeRot = self.roundDown(self.rotSensors[4].read())
        
        lAnkleRot = self.roundDown(self.rotSensors[5].read())
        rAnkleRot = self.roundDown(self.rotSensors[6].read())
        
        torsoRotX = self.roundDown(self.rotSensors[7].readX())
        torsoRotZ = self.roundDown(self.rotSensors[7].readZ())
        torsoRot = (torsoRotX, torsoRotZ)
        
        #speeds
        lThighSpeedX = self.roundDown(self.motors[0].getSpeedX())
        lThighSpeedZ = self.roundDown(self.motors[0].getSpeedZ())
        lThighSpeed = (lThighSpeedX, lThighSpeedZ)
        
        rThighSpeedX = self.roundDown(self.motors[1].getSpeedX())
        rThighSpeedZ = self.roundDown(self.motors[1].getSpeedZ())
        rThighSpeed = (rThighSpeedX, rThighSpeedZ)
        
        lKneeSpeed = self.roundDown(self.motors[2].getSpeed())
        rKneeSpeed = self.roundDown(self.motors[3].getSpeed())
        
        lAnkleSpeed = self.roundDown(self.motors[4].getSpeed())
        rAnkleSpeed = self.roundDown(self.motors[5].getSpeed())
        
        torsoSpeedX = self.roundDown(self.motors[6].getSpeedX())
        torsoSpeedZ = self.roundDown(self.motors[6].getSpeedZ())
        torsoSpeed = (torsoSpeedX, torsoSpeedZ)
        
        return State(bodyTrans, bodyRot, lThighRot, rThighRot, lKneeRot, rKneeRot, lAnkleRot, rAnkleRot, torsoRot, lThighSpeed, rThighSpeed, lKneeSpeed, rKneeSpeed, lAnkleSpeed, rAnkleSpeed, torsoSpeed)
    
    def nextFrame(self):
        currentFrame = cmds.currentTime( query=True )
        nextFrame = currentFrame + 1;
        cmds.currentTime( nextFrame, edit=True )
        
    def takeAction(self, action):
        self.motors[0].setSpeed2D(action.leftThighSpeed)
        self.motors[1].setSpeed2D(action.rightThighSpeed)
        self.motors[2].setSpeed(action.leftKneeSpeed)
        self.motors[3].setSpeed(action.rightKneeSpeed)
        
        self.motors[4].setSpeed(action.rightAnkleSpeed)
        self.motors[5].setSpeed(action.leftAnkleSpeed)
        self.motors[6].setSpeed2D(action.torsoSpeed)
        
        self.nextFrame()
        
     
#tests
crawler = Walker("crawler");
print "motors:"
print [str(motor) for motor in crawler.motors]
print "rot sensors:"
print [str(sensor) for sensor in crawler.rotSensors]
print "trans sensors:"
print [str(sensor) for sensor in crawler.transSensors]
print "death sensors:"
print [str(sensor) for sensor in crawler.deathSensors]

print
print "set motors to 0"
a = Action((0,0), (0,0), 0, 0, 0, 0, (0,0))
print "action to take: {}".format(str(a))
crawler.takeAction(a)
print "current state:"
print crawler.getCurrentState()

print "set motors to max and min"
a = Action((10,20), (30,40), 50, 60, 70, 80, (90,100))
crawler.takeAction(a)
print "current state:"
print crawler.getCurrentState()