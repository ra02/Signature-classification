path="D:\phD\database\GPDSOriginal\GPDS300\";
fid = fopen( 'D:\phD\database\GPDSOriginal\GPDS300\G_GPair.txt', 'r' );
fid1 = fopen( 'D:\phD\database\GPDSOriginal\GPDS300\G_FPair.txt', 'r' );
fid2 = fopen( 'D:\phD\database\GPDSOriginal\GPDS300\mix_pair.txt', 'wt' );
g = textscan(fid,'%s','delimiter','\n');
g1 = textscan(fid1,'%s','delimiter','\n');
[sizex, sizey] = size(g{1,1});
for i=1:sizex
    tline = fget1(fid);
    tline1 = fget1(fid1);
    bool=ischar(tline);
    while ischar(tline)
        
        fprintf( fid2, '%s %s\n', tline);
        fprintf( fid2, '%s %s\n', tline1);
        tline = fgetl(fid);
        tline1 = fgetl(fid1);
    end
end
fclose(fid2);

