from Metodos import *
img = cv2.imread('../couro_images/c1_1.JPG',0)
x,y =  len(img), len(img[0])



while (x>0 and y>0):
    # Load an color image in grayscale
    bd = []
    for i in range(1,8):
        for j in range(1,51):
            print '../couro_images/c'+str(i)+'_'+str(j)+'.JPG'
            img = cv2.imread('../couro_images/c'+str(i)+'_'+str(j)+'.JPG',0)
            img = cv2.resize(img,(y,x))
            imgQuantized = img.copy()
            coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
            coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
            glcm_features  = getFeatures(coOccurenceNormalized, 256)
            bd.append(glcm_features)
    Salvar_arquivo(bd,"../OpenCV_Rasp/GLCM_RESIZE/GLCM_X"+str(y)+"_Y"+str(x)+".txt")
    x-=100
    y-=100
#print glcm_features
