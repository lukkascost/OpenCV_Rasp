from Metodos import *

lista = []
passos = []
for i in range(100,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos.sort(reverse=True)

for i in passos:
        img = cv2.imread("../../couro_images/c1_1.JPG",0)
        img = resize_img_passo(img,i)
        cv2.imwrite("Imagens/{:03d}_passo.JPG".format(i),img)
