# Content of files

## TIMES_FOR_EACH_IMG.txt
        M=73 e CM de 6bits, banco de imagem COURO.
        Contem um numpy array separado por virgula.
        Cada linha corresponte a respectiva imagem do banco do COURO. 350 linhas ao todo.
        a primeira coluna contem o tempo para gerar a matriz de GLCM horizontal com vizinho direito.(s)
        a segunda coluna contem o tempo para normalizar a matriz de GLCM.
        a terceira coluna contem o tempo para gerar os 10 atributos mais rapidos.
        a quarta coluna contem o tempo para predizer uma amostra.
        a quinta coluna contem um somatorio das quatro anteriores formando o tempo total.
        
## T2_M100,50,10,1_CM5b.txt
### Terminação _Line_***.txt indica valores que formam a linha do arquivo principal. 100 linhas.
        M variando em 4 valores (1,10,50,100) , CM de 5bits, banco de imagem ROBOT
        Contem um numpy array separado por virgula.
        Cada linha corresponde a um valor de M em ordem decrescente.(4 linhas) 100,50,10,1
        a primeira coluna contem o tempo para gerar a matriz de GLCM horizontal com vizinho direito.(s)
        a segunda coluna contem o tempo para normalizar a matriz de GLCM.
        a terceira coluna contem o tempo para gerar os 10 atributos mais rapidos.
        a quarta coluna contem o tempo para predizer uma amostra.
        a quinta coluna contem um somatorio das quatro anteriores formando o tempo total.

## T1_M50_CM1-8b.txt
### Terminação _Line_***.txt indica valores que formam a linha do arquivo principal. 100 linhas.
        M fixo em 50, CM variando de 1 a 8 bits, banco de imagem ROBOT
        Contem um numpy array separado por virgula.
        Cada linha corresponde a um valor de CM em ordem crescente.(8 linhas). 1b,2b,3b,..,8b.
        a primeira coluna contem o tempo para gerar a matriz de GLCM horizontal com vizinho direito.(s)
        a segunda coluna contem o tempo para normalizar a matriz de GLCM.
        a terceira coluna contem o tempo para gerar os 10 atributos mais rapidos.
        a quarta coluna contem o tempo para predizer uma amostra.
        a quinta coluna contem um somatorio das quatro anteriores formando o tempo total.     
        
## T1_M1_CM1-8b.txt
### Terminação _Line_***.txt indica valores que formam a linha do arquivo principal. 10 linhas.
        M fixo em 1, CM variando de 1 a 8 bits, banco de imagem ROBOT
        Contem um numpy array separado por virgula.
        Cada linha corresponde a um valor de CM em ordem crescente.(8 linhas). 1b,2b,3b,..,8b.
        a primeira coluna contem o tempo para gerar a matriz de GLCM horizontal com vizinho direito.(s)
        a segunda coluna contem o tempo para normalizar a matriz de GLCM.
        a terceira coluna contem o tempo para gerar os 10 atributos mais rapidos.
        a quarta coluna contem o tempo para predizer uma amostra.
        a quinta coluna contem um somatorio das quatro anteriores formando o tempo total.           

* **Lucas Costa** - [lukkascost](https://github.com/lukkascost)

See also the list of [contributors](https://github.com/lukkascost/MachineLearn/contributors) who participated in this project.
