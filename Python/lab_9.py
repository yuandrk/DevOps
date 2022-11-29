import os

cmd = 'echo "File has."'
cmd1 = 'wc -m preproinsulin-seq.txt | cut -d" " -f1'
os.system(cmd)
os.system(cmd1)

a = int(input('What line do you like delete ? '))

try:
    with open(r'/home/yuandrk/DevOps/Python/preproinsulin-seq.txt', 'r') as fr:
        # reading line by line
        lines = fr.readlines()
         
        # pointer for position
        ptr = 1
     
        # opening in writing mode
        with open(r'/home/yuandrk/DevOps/Python/preproinsulin-seq.txt', 'w') as fw:
            for line in lines:
               
                # we want to remove 5th line
                if ptr != a:
                    fw.write(line)
                ptr += 1
    print("Deleted")

except:
    print("Oops! something error")