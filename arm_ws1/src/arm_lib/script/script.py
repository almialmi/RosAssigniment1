import numpy as np
from numpy.core.fromnumeric import choose

def rotateInz(z):
    return np.array([
        [np.cos(z),-np.sin(z),0,0],
        [np.sin(z),np.cos(z),0,0],
        [0,0,1,0],
        [0,0,0,1]])

def rotateIny(y):
    return np.array([
        [np.cos(y),0,np.sin(y),0],
        [0,1,0,0],
        [-np.sin(y),0,np.cos(y),0],
        [0,0,0,1]])

def rotateInx(x):
    return np.array([
        [1,0,0,0],
        [0,np.cos(x),-np.sin(x),0],
        [0,np.sin(x),np.cos(x),0],
        [0,0,0,1]])
def translateByz(tz):
    return np.array([
        [1,0,0,0],
        [0,1,0,0],
        [0,0,1,tz],
        [0,0,0,1]])
def translateByy(ty):
    return np.array([[1,0,0,0],
    [0,1,0,0],
    [0,0,1,ty],
    [0,0,0,1]])
def translateByx(tx):
    return np.array([
        [1,0,0,tx],
        [0,1,0,0],
        [0,0,1,0],
        [0,0,0,1]])




M1 = translateByz(0.1)

M2 = rotateInz(np.radians(60)).dot(translateByz(0.05))

M3 = rotateInx(np.radians(30)).dot(translateByz(2.0))

M4 = rotateInx(np.radians(-90)).dot(translateByz(1.0))

M5 = rotateInz(np.radians(-30)).dot(translateByz(1.0))

matrixs = [M1,M2,M3,M4,M5]
M = M1
for i in matrixs:
    M = M.dot(i)
#esult = (((M1.dot(M2)).dot(M3)).dot(M4)).dot(M5)

print(M)



import tinyik as ik
arm = ik.Actuator([
    'z',[0.,0.,0.15],
    'x',[0.,0.,2.0],
    'x',[0.,0.,1.0],
    'x',[0.,0.,1.0]
])

arm.ee = [1.0,1.0,1.0]

print(arm.angles)