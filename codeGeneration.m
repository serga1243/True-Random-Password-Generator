clc; clear;
N = input('Enter the length of your code/������� ����� ������ ����:\n');
codeChar = char(zeros([1 N], 'uint8'));

% ������� ����� ������� �� ������ ������������ � ��������� ������ ������
% Specify what characters you want to use in generating your password
Ab = ['0' '1' '2' '3' '4' '5' '6' '7'...
      '8' '9' 'A' 'B' 'C' 'D' 'E' 'F'...
      'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N'...
      'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V'...
      'W' 'X' 'Y' 'Z' 'a' 'b' 'c' 'd'...
      'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l'...
      'm' 'n' 'o' 'p' 'q' 'r' 's' 't'...
      'u' 'v' 'w' 'x' 'y' 'z' '_' '-'];
Ablen = length(Ab);

clc;
for i = 1:N
    inp = input('Enter any combination from the keyboard/������� ����� ���������� � ����������:\n', 's');
    inp = uint16(inp);
    cod = randi([1 Ablen], 'like', inp);
    codeChar(i) = Ab(cod);
    clc;
end

fprintf('Your code/��� ���:\n\n');
fprintf('%c', codeChar);
fprintf('\n\n');
fprintf('The complexity of this code/��������� ����� ����: %d\n', Ablen^N/2);