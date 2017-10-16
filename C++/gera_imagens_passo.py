from Metodos import *

lista = []
passos = []
for i in range(2,1000):
    if (4000/i,3000/i) not in lista:
        lista.append((4000/i,3000/i))
        passos.append(i)
passos.sort(reverse=True)

for i in passos:
        img = cv2.imread("Imagens_Leandro/001_passo.JPG",0)
        img = resize_img_passo(img,i)
        cv2.imwrite("Imagens_Leandro/{:03d}_passo.JPG".format(i),img)
