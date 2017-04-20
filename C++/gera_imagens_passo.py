from Metodos import *
for i in range(100,-1,-1):
        img = cv2.imread("../../couro_images/c1_1.JPG",0)
        img = resize_img_passo(img,i)
        cv2.imwrite("Imagens/{:03d}_passo.JPG".format(i),img)
