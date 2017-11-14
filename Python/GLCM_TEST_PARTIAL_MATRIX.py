import numpy as np
from MachineLearn.Classes.Extractors.GLCM import GLCM
basemask = np.array([1,2,5,9,15,16,17,21,22,23,25])
basemask = basemask-1

img = np.array([[1,2,3,0],
                [0,1,2,3],
                [0,2,1,3],
                [1,2,0,3]])
oGl = GLCM(img, 2)
oGl.generateCoOccurenceHorizontal()
oGl.normalizeCoOccurence()
oGl.calculateAttributes()
print oGl.attributes[basemask[:-1]]


#----------------------------------------------------------------------
def getLineCoOccurence(img,indexLine):
        """
        """
        result = np.zeros((1,4))
        for i in range(0,img.shape[0]):
                for j in range(0,img.shape[1]-1):
                        if (img[i,j] == indexLine):
                                result[0,img[i,j+1]] += 1
        return result      


def normalizeLine(line, grayscale):
        return line/((grayscale*(grayscale-1)))

def GLCM_tipo1(img, classe):
        glcm_atributes = np.zeros(26,dtype=np.float64)  
        gray = 4
        for i in range(gray):       
                coOccurenceNormalized = normalizeLine(getLineCoOccurence(img,i), gray)
                if np.amax(coOccurenceNormalized)> glcm_atributes[17]:
                        glcm_atributes[17] = np.amax(coOccurenceNormalized)    
                for j in range(gray):
                        ij = coOccurenceNormalized[0,j]
                        glcm_atributes[1]  += ij*ij
                        glcm_atributes[2]  += ((i-j)*(i-j) * (ij))
                        glcm_atributes[5]  += (ij)/(1+((i-j)*(i-j)))
                        glcm_atributes[9]  += ij*np.log10(ij+1e-30)    
                        glcm_atributes[15] += (ij)/(1+abs(i-j))
                        glcm_atributes[16] += ij*(i+j)
                        glcm_atributes[21] += ij*abs(i-j)
                        glcm_atributes[22] += ij*(i-j)
                        glcm_atributes[23] += ij*i*j
        glcm_atributes[16] /= 2
        glcm_atributes[22] /= 2
        glcm_atributes[25] = classe      
        glcm_atributes[9]  *= -1
        return glcm_atributes[1:]  

print GLCM_tipo1(img, 1)[basemask]

