%Ask the user for order of array (n) and check that it is whole number
%greater than 2

n = input("Enter the order of the matrix: ");
while (mod(n,1) ~= 0) || (n <= 2)
    fprintf("That is an invalid number\n")
    n = input("Enter the order of the matrix: ");
end

%calculate the magic constant
N = (n*((n^2)+1))/2;

%Asks the user to enter the number of square arrays (M) and check that it
%is a whole number and non-zero

M = input("Enter the number of arrays to be generated: ");
while (mod(n,1) ~= 0) || (M <= 0)
    fprintf("That is an invalid number\n")
    M = input("Enter the number of arrays to be generated: ");
end

%Create a random square array X of order n, M times
%Then check to see if it has any magic arrays, semimagic arrays, magic
%columns, or magic rows
magicsquares = 0;
semimagicsquares = 0;
magiccolumns = 0;
magicrows = 0;
for i = 1:M
    P = randperm(n^2);
    X = reshape(P,[n,n]);
    %X = [2,7,6;9,5,1;4,3,8]
    count = 0;
    %magic colum
    ismagiccolumn = true;
    for j = 1:n
        count = 0;
        for k = 1:n
            count = count + X(k,j);
        end
        if count ~= N
            ismagiccolumn = false;
        end
    end
    %magic row
    ismagicrow = true;
    for j = 1:n
        count = 0;
        for k = 1:n
            count = count + X(j,k);
        end
        if count ~= N
            ismagicrow = false;
        end
    end
    %diagonal
    isdiagonal = true;
    count = 0;
    for j = 1:n
        count = count + X(j,j);
    end
    if count ~= N
        isdiagonal = false;
    end
    count = 0;
    for k = n:-1:1
        count = count + X((n+1)-k,k);
    end
    if count ~= N
        isdiagonal = false;
    end

    %decide what type of matrix it is if any
    if (isdiagonal && ismagicrow && ismagiccolumn)
        magicsquares = magicsquares + 1;
    elseif (ismagiccolumn && ismagicrow)
        semimagicsquares = semimagicsquares + 1;
    elseif ismagicrow
        magicrows = magicrows + 1;
    elseif ismagiccolumn
        magiccolumns = magiccolumns + 1;
    end
end

fprintf("The number of magic arrays is: %d\n",magicsquares)
fprintf("The number of semimagic arrays is: %d\n",semimagicsquares)
fprintf("The number of magic columns is: %d\n",magiccolumns)
fprintf("The number of magic rows is: %d\n",magicrows)

