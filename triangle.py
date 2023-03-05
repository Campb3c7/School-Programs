s1 = int(input('What is side 1 '))
s2 = int(input('What is side 2 '))
s3 = int(input('What is side 3 '))
fail = False
same = 0
if s1 + s2 < s3:
    fail=True
if s1 + s3 < s2:
    fail=True
if s2 + s3 < s1:
    fail = True

if fail == True:
    print('Triangle is Not a triangle')
if fail == False:
    print('Triangle Is a triangle')
    
if s1 == s2:
    same+=1
if s1 == s3:
    same+=1
if s2 == s3:
    same+=1
if same == 1:
    print('Triangle is Isosolies triangle')
elif same == 3:
    print('Triangle is Equalateral')
else:
    print('Triangle is scalene')
    
        
