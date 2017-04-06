from Metodos import *

for i in range(5,101,5):
    img = resize_img_passo(cv2.imread("c1_1.JPG",0),i)
    cv2.imwrite("{:03d}_passo.JPG".format(i),img)
