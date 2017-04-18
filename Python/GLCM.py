from Metodos import *

# Load an color image in grayscale
img = cv2.imread('../../couro_images_semfundo/c1_1.JPG',0)
imgQuantized = img.copy()

coOccurence = getCoOccurrenceMatrixMod(imgQuantized, 256)
coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
glcm_features  = getFeatures(coOccurenceNormalized, 256)


print glcm_features
