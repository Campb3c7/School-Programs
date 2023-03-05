import math
run = True
while run == True:
    metal = input('Enter the name of the Element (Al,Co,Cr): ').lower()
    avo = 6.022E23
    if metal == 'al':
        R = 0.1431
        mass = 26.98/avo
        run = False
        act = 2.7
        m = 'Al'
    elif metal == 'co':
        R = 0.1253
        mass = 58.93/avo
        run = False
        act = 8.9
        m = 'Co'
    elif metal == 'cr':
        R = 0.1249
        mass = 52.00/avo
        run = False
        act = 7.2
        m = 'Cr'
    else:
        print('Please Enter a valid Element')
        
run = True

while run == True:
    structure = input('Enter a crystal structure (BCC, FCC, or HCP): ').lower()
    if structure == 'fcc':
        n = 4
        a = (4*R)/math.sqrt(2)
        V = a**3
        run = False
        stu = 'FCC'
    elif structure == 'bcc':
        n = 2
        a = (4*R)/math.sqrt(3)
        V = a**3
        run = False
        stu = 'BCC'
    elif structure == 'hcp':
        n = 6
        a = 2*R
        c = 1.63*a
        V = ((3*math.sqrt(3)*c*(a**2))/2)
        run = False
        stu = 'HCP'
    else:
        print('Please enter a valid cystal structure')


density = (mass*n)/(V*1E-21)
top = act - density
pd = (abs(top)/act)*100
print(pd)
print(density)

if pd < 5:
    answer = 'is the right crystal structure'
    jkl = '<= 5%'
else:
    answer = 'may not be the right crystal structure'
    jkl = '>5%'

print('The calculated density of {} with {} structure is {:.2f} g/cm3. The difference is {}, thus {} {}'.format(m,stu,density,jkl,stu,answer))


        
    
    
