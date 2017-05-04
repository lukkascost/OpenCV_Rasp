import thread
from Metodos import *
bd = []
for i in range(1,8):
    for j in range(1,50):
        k = 2
        gray = 256
        img = cv2.imread("../../couro_images_semfundo/c{:d}_{:d}.JPG".format(i,j),0)
        for x in range(k):
            img = np.divide(img,2)
            gray = gray/2
        coOccurence = getCoOccurrenceMatrixMod(img, gray)
        coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,img,gray)
        glcm_features  = getFeatures(coOccurenceNormalized, gray)
        glcm_features[9] = i
        bd.append(glcm_features)
        print "Imagem {:02d} classe {:02d} {:02d} Divisoes coOccurrence tamanho {:03d}".format(j,i, k,gray)
        print glcm_features
Salvar_arquivo(bd,"GLCM_RESIZE/GLCM_{:03d}GScale.txt".format(gray))
