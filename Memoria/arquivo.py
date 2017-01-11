import os
os.system("cat /proc/"+str(os.getpid())+"/status > arqs1")
a = [x for x in range(1000)]
os.system("cat /proc/"+str(os.getpid())+"/status > arqs1")
