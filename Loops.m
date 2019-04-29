%% Problem #1
n = input('How many rows do you want?')
m = input('How many columns do you want?')
mat = zeros(n,m);
for j = 1:m
    mat(1,j) = j;
end

for i = 1:n
    mat(i,1) = i;
end

for i = 2:n 
for j = 2:m
    mat(i,j) = mat(i-1, j) + mat(i,j-1);
end  
end
mat

%% Problem #2
age = input('Type your age in years.')
rhr = input('What is your resting heart rate?')
fitnesslevel = input('What is your fitness level (low 1, medium 2, or high 3)?')
iten = 0:fitnesslevel
if fitnesslevel == 1
    iten = 0.55;
    disp('Your fitness level is low.')
elseif fitnesslevel == 2
    iten = 0.65;
    disp('Your fitness level is medium.')  
elseif fitnesslevel == 3
    iten = 0.8;
    disp('Your fitness level is high.')
else disp('Please choose 1, 2, or 3.') 
   fitnesslevel = input('What is your fitness level (low 1, medium 2, or high 3)?')
end

male = 1;
female = 2;
gender = input('Type 1 for male or 2 for female.')
if gender > 2 | gender < 1
    disp('Pick either 1 or 2.')
    gender = input('Type 1 for male or 2 for female.')
elseif gender == 1
        disp('You are a male.')
        THRmen = ((220-age)-rhr)*iten+rhr
elseif gender == 2
            disp('You are a female.')
            THRwomen = ((206-0.88*age)-rhr)*iten+rhr
end









