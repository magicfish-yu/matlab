function importfile(fileToRead1)
%IMPORTFILE(FILETOREAD1)
%  ��ָ���ļ��е�������
%  FILETOREAD1:  Ҫ��ȡ���ļ�

%  �� MATLAB �� 06-Jul-2019 21:51:17 �Զ�����

% �����ļ�
rawData1 = importdata(fileToRead1);

% ����һЩ���ļ�(�� CSV �� JPEG �ļ�)��IMPORTDATA ���ܻ�
% ����һ�������顣�����������������һ���ṹ�壬�Ա�����
% �뵼���򵼵����ƥ�䡣
[~,name] = fileparts(fileToRead1);
newData1.(matlab.lang.makeValidName(name)) = rawData1;

% �ڻ����������д���Щ�ֶδ����±�����
vars = fieldnames(newData1);
for i = 1:length(vars)
    assignin('base', vars{i}, newData1.(vars{i}));
end

