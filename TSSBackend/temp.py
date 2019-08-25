import time
a=[20,20,20]

#Function for counting each second
def timer(t):
    while t > 0:
        print (t)
        t-=1
        time.sleep(1)

#Loop for calling timer function for each signal
for i in range(3):
    
    print("Signal 1:")
    timer(a[0])
    a[1]=a[1] + a[0]
    a[2]=a[2] + a[0]
    if(a[1]>60):
        a[1]=60
    if(a[2]>60):
        a[2]=60
        
    print("Signal 2:")
    timer(a[1])
    a[0]=a[0] + a[1]
    a[2]=a[2] + a[1]
    if(a[0]>60):
        a[0]=60
    if(a[2]>60):
        a[2]=60
    
    print("Signal 3:")
    timer(a[2])
    a[0]=a[0] + a[2]
    a[1]=a[1] + a[2]
    if(a[0]>60):
        a[0]=60
    if(a[1]>60):
        a[1]=60