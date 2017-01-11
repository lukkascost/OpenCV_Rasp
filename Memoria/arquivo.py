
import os
os.system("cat /proc/"+str(os.getpid())+"/status > arqs2")
a = [x for x in range(1000)]

