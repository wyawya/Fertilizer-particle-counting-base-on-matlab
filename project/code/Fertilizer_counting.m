function Fertilizer_counting()
data_path='F:\songjie\3\';
result_path='F:\songjie\result\';
excel_file='F:\songjie\result.xlsx';
img_path_list = dir(strcat(data_path,'*.jpg'));
len=length(img_path_list);
%im=imread('F:\songjie\2\2.jpg');

ansnum=ones(1,len);
arr = cell(1,len);

for i=1:len
    image_path=[data_path,img_path_list(i).name];
    save_path=[result_path,'result',img_path_list(i).name];
    arr(i)={img_path_list(i).name};
    ansnum(i)=counting(image_path,save_path); 
end

ansnum=ansnum';
arr=arr';

xlswrite(excel_file,ansnum,'Sheet1','B');
xlswrite(excel_file,arr,'Sheet1','A');

function y=counting(image_path,save_path)
im=imread(image_path);
imhsv=rgb2hsv(im);
s=imhsv(:,:,2);
bw=im2bw(s,0.6);

obw=~bw;
 L = bwlabel(obw, 8);
 S = regionprops(L, 'area', 'boundingbox');
 bw2 = ismember(L, find([S.Area] <= 80));
 
 L1=bwlabel(bw2, 8);
 S1 = regionprops(L1, 'area', 'boundingbox');
 bw3 = ismember(L1, find([S1.Area] >=20));
 
 img_reg = regionprops(bw3, 'area', 'boundingbox');
 
 areas = [img_reg.Area];
 rects = cat(1,  img_reg.BoundingBox);
 [x, y] = size(areas);
 
 figure(1)
 imshow(im)
 
  for i = 1:size(rects, 1)
      rectangle('position',rects(i, :), 'EdgeColor', 'g');
  end
  
  saveas(1,save_path);
  

  
  
  





