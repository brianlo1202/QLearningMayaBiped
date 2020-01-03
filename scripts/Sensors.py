class Sensor:
    #pass in name of transform node (the node with the rotation attribute)
    def __init__(self, name):
        self.name = name;
        
    def read(self):
        return -1
        
    def __str__(self):
        return self.name + " (reading: " + str(self.read()) + ")"

class Sensor_Rotation(Sensor):
    #actual rotation is mult by -1 to make clockwise positive
    def read(self):
        reading = cmds.getAttr(self.name + '.rotateZ')
        return -1*reading
    def readX(self):
        reading = cmds.getAttr(self.name + '.rotateX')
        return reading
    def readY(self):
        reading = cmds.getAttr(self.name + '.rotateY')
        return reading
        
    
        
        
class Sensor_Translate(Sensor):
    def read(self):
        reading = cmds.getAttr(self.name + '.translateX')
        return reading
    def readY(self):
        reading = cmds.getAttr(self.name + '.translateY')
        return reading
#returns if sensor hit the ground
class Sensor_Death(Sensor):
    def read(self):
        reading = cmds.getAttr(self.name + '.translateY')
        return reading <= 0.0

#Test Sensor
print
randomSensorName = cmds.ls( 'sensor_*' )[0]
print("testing " + randomSensorName)
s = Sensor(randomSensorName)
print "sensor to string: " + str(s)
print "sensor reading: " + str(s.read())
   
#Tests Sensor_Rotation
print
randomSensorName = cmds.ls( 'sensor_rotation*' )[0]
print("testing " + randomSensorName)
s = Sensor_Rotation(randomSensorName)
print "sensor to string: " + str(s)
print "sensor reading: " + str(s.read())
print "sensor reading X: " + str(s.readX())
print "sensor reading Y: " + str(s.readY())  
  
#Tests Sensor_Translate
print
randomSensorName = cmds.ls( 'sensor_translate_body' )[0]
print("testing " + randomSensorName)
s = Sensor_Translate(randomSensorName)
print "sensor to string: " + str(s)
print "sensor reading: " + str(s.read())
print "sensor reading Y: " + str(s.readY())

#Tests Sensor_Death
print
randomSensorName = cmds.ls( 'sensor_death_knee1' )[0]
print("testing " + randomSensorName)
s = Sensor_Death(randomSensorName)
print "sensor to string: " + str(s)
print "sensor reading: " + str(s.read())