%This is a quiz program
disp('Welcome to Quiz Section')
 disp('Q1. What is the name of your School?')
 disp('a. SQI b. LAUTECH c. LICO')
 
 answer = input('enter answer: ', 's');
 score = 0;
 switch('a')
     case answer
         score = score + 5;
     otherwise
         disp('')
 end
 disp('Welcome to Quiz Section')
 disp('Q2. What is your course of study?')
 disp('a. PYTHON b. MATLAB c. JAVA')
 
 answer = input('enter answer: ', 's');
 switch('b')
     case answer
         score = score + 5;
     otherwise
          disp('')
 end
 disp('Welcome to Quiz Section')
 disp('Q1. What is the name of your Child School?')
 disp('a. SQI. b. LAUTECH c.LICO')
 
 answer = input('enter answer: ', 's');
 switch('c')
     case answer
         score = score + 5;
     otherwise
          disp('')
 end
 percent = floor((score/15)*100);
 per = '%';
 fprintf('the total score is %d \n your percentage is %d%s \n', score, percent, per)
 
 
 function finalStr = matrix_table(matrixName, matrix)
    numericalFound = strfind(matrix{1, 1}, 'NUMERICAL');
    finalStr = strcat( ...
    '    <table><tr>', ...
    '      <td style="vertical-align: center;">', matrixName, '&nbsp;=&nbsp;</td>', ...
    '      <td style="border: 1px solid #000; border-right:0px;">&nbsp;</td>', ...
    '      <td>', ...
    '        <table>');
    
    for i = 1:size(matrix,1)
        finalStr = strcat(finalStr, '<tr>');
        if i == 1 & numericalFound > 0
            for j = 1:size(matrix,2)
                finalStr = strcat(finalStr, '<td style="padding-top:10px; padding-left:5px; padding-right:5px; text-align:center;">', matrix{i,j}, '</td>');
            end
        else
            for j = 1:size(matrix,2)
                finalStr = strcat(finalStr, '<td style="padding-left:5px; padding-right:5px; text-align:center;">', matrix{i,j}, '</td>');
            end
        end
        finalStr = strcat(finalStr, '</tr>');
    end

