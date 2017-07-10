from Metodos import *
def GLCM24(img,gray):
        glcm_atributes = np.zeros(25,dtype=np.float64)        
        coOccurence = getCoOccurrenceMatrixMod(img, gray)
        coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,img,gray)
        
        HXY1 = 0.0
        HXY2 = 0.0
        HX   = 0.0
        HY   = 0.0
        
        px = np.zeros(gray)
        py = np.zeros(gray)
        px_plus_y = np.zeros(gray*2-1)
        px_minus_y = np.zeros(gray)
        for i in range(gray):
                px[i] = sum(coOccurenceNormalized[i,:])
                py[i] = sum(coOccurenceNormalized[:,i])        
                for j in range(gray):
                        px_plus_y[i+j] += coOccurenceNormalized[i,j]
                        px_minus_y[abs(i-j)] += coOccurenceNormalized[i,j]
                        glcm_atributes[1]  += coOccurenceNormalized[i,j]*coOccurenceNormalized[i,j]
                        glcm_atributes[2]  += ( (i-j) * (i-j) * (coOccurenceNormalized[i,j]))
                        glcm_atributes[3]  += (i*j) * coOccurenceNormalized[i,j]
                        glcm_atributes[5]  += (coOccurenceNormalized[i,j])/(1+pow(i-j,2))
                        glcm_atributes[15] += (coOccurenceNormalized[i,j])/(1+abs(i-j))
                        glcm_atributes[16] += coOccurenceNormalized[i,j]*(i+j)
                        glcm_atributes[9]  += coOccurenceNormalized[i,j]* np.log10(coOccurenceNormalized[i,j]+ 1e-30)
                        glcm_atributes[21] += coOccurenceNormalized[i,j]*abs(i-j)
                        glcm_atributes[22] += coOccurenceNormalized[i,j]*(i-j)
                        glcm_atributes[23] += coOccurenceNormalized[i,j]*i*j
                        glcm_atributes[24] += coOccurenceNormalized[i,j]*pow(i-j,2)
        glcm_atributes[3]  = (glcm_atributes[3]  - (np.mean(px)*np.mean(py)))
        glcm_atributes[3]  /= np.std(px)*np.std(py)
        meanall = (np.mean(px)+np.mean(py))/2
        glcm_atributes[16]  = glcm_atributes[16] /2
        glcm_atributes[22] /= 2
        glcm_atributes[24] /= pow(pow(gray, 2)-1,2)
        for i in range(gray*2-1):
                glcm_atributes[6]  += px_plus_y[i]
                glcm_atributes[8]  += px_plus_y[i]*np.log10(px_plus_y[i]+ 1e-30) 
        for i in range(gray):
                glcm_atributes[11]  += px_minus_y[i]*np.log10(px_minus_y[i]+ 1e-30) 
                HX += px[i]*np.log10(px[i]+1e-30)
                HY += py[i]*np.log10(py[i]+1e-30)        
                for j in range(gray):
                        HXY1 += coOccurenceNormalized[i,j]*np.log10(px[i]*py[j] +1e-30)
                        HXY2 += px[i]*py[j]*np.log10(px[i]*py[j] +1e-30)
                        glcm_atributes[4] += pow(i-meanall,2)*coOccurenceNormalized[i,j]
                        glcm_atributes[18] += pow(i+j-(2*meanall),2)*coOccurenceNormalized[i,j]
                        glcm_atributes[19] += coOccurenceNormalized[i,j] * pow(i+j-np.mean(px)-np.mean(py),3)
                        glcm_atributes[20] += coOccurenceNormalized[i,j] * pow(i+j-np.mean(px)-np.mean(py),4)
                        
        glcm_atributes[8]  *= -1
        glcm_atributes[9]  *= -1
        glcm_atributes[10]  = np.var(px_minus_y)
        glcm_atributes[11]  *= -1
        HXY1 *= -1
        HXY2 *= -1
        
        glcm_atributes[12]  = glcm_atributes[9]  - HXY1
        m1 = np.amax(HX)
        m2 = np.amax(HY)
        glcm_atributes[17] = np.amax(coOccurenceNormalized)
        if m1>m2:
                glcm_atributes[12]  /= m1
        else:
                glcm_atributes[12]  /= m2
        
        glcm_atributes[13]  = pow((1-np.exp(-2.0*(HXY2-glcm_atributes[9] ))), 1/2)
        
        
        for i in range(gray*2-1):
                glcm_atributes[7]  += pow(i-glcm_atributes[8] ,2)*px_plus_y[i]
        return glcm_atributes[1:]
gray = 256
img = cv2.imread("DataBase/c1_1.JPG",0)
print GLCM24(img, gray)       