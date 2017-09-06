from Classes import *

def LBP_img(img):
        output = np.zeros(img.shape[:2])
        for i in range(1,output.shape[0]-1):
                for j in range(1,output.shape[1]-1):
                        central = img[i,j]                        
                        p11 = int(img[i-1,j-1] < central)
                        p12 = int(img[i-1,j]   < central)
                        p13 = int(img[i-1,j+1] < central)       
                        p21 = int(img[i,j-1]   < central)
                        p23 = int(img[i,j+1]   < central)
                        p31 = int(img[i+1,j-1] < central)
                        p32 = int(img[i+1,j]   < central)
                        p33 = int(img[i+1,j+1] < central)
                        output[i,j] = p13 + p23*2 + p33*4 + p32*8 + p31*16 + p21*32 + p11*64 + p12*128
        return np.histogram(output, bins=[x for x in range(256)])
img = cv2.imread("DataBase/c1_1.JPG",0)
lbp = LBP_img(img)
print lbp[0]
print lbp[1]    