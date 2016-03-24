mln = []
n = 4

alpha = 10 
beta = 32
l = 280



a = alpha * tan(2*pi / (2*n))
b = beta * sin(2*pi / (2*n)) 
outline = line([(0,0), (210, 0), (210, 297), (0, 297), (0,0)], linestyle='--')
theta = 2*pi / (2*n)
h = (b-a)/2 * tan(theta)
n_row = floor(l/h) + 1
for row in range(n_row):
    if (row%2 == 1):
        total = 0
    else:
        total = -(b-a)/2
    for segment in range(n+1):
        if ((row+segment)%2 == 1):
            col = 'blue'
            next = b
            cur = a
        else:
            col = 'red'
            next = a
            cur = b
        
        mln.append(line([(total,row*h), (total+cur,row*h)], color=col))
        mln.append(line([(total+cur,row*h), (total+cur - (-next+cur)/2,row*h+h)], color='blue'))
        total += cur
A =sum(mln) + outline
A.save('test.svg', axes=false, aspect_ratio=1)
show(sum(mln) + outline, axes=false, xmin=0, aspect_ratio=1)
