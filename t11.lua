local utf8 = require('lua-utf8')

array = {"Lua", "Tutorial"}

for i= 0, 2 do
   print(array[i])
end

array = {"Google", "Runoob"}

for key,value in ipairs(array)
do
   print(key, value)
end



function square(iteratorMaxCount,currentNumber)
   if currentNumber<iteratorMaxCount
   then
      currentNumber = currentNumber+1
   return currentNumber, currentNumber*currentNumber
   end
end

for i,n in square,9,0
do
   print(i,n)
end




array = {"Google", "Runoob"}

function elementIterator (collection)
   local index = 0
   local count = #collection
   -- �հ�����
   return function ()
      index = index + 1
      if index <= count
      then
         --  ���ص������ĵ�ǰԪ��
         return collection[index]
      end
   end
end

for element in elementIterator(array)
do
   print(element)
end





-- ��ʼ����
mytable = {}

-- ָ��ֵ
mytable[1]= "Lua"

-- �Ƴ�����
mytable = nil
-- lua �������ջ��ͷ��ڴ�



-- �򵥵� table
mytable = {}
print("mytable �������� ",type(mytable))
print(utf8.len("mytable �������� "))

mytable[1]= "Lua"
mytable["wow"] = "�޸�ǰ"
print("mytable ����Ϊ 1 ��Ԫ���� ", mytable[1])
print("mytable ����Ϊ wow ��Ԫ���� ", mytable["wow"])

-- alternatetable��mytable����ָͬһ�� table
alternatetable = mytable

print("alternatetable ����Ϊ 1 ��Ԫ���� ", alternatetable[1])
print("mytable ����Ϊ wow ��Ԫ���� ", alternatetable["wow"])

alternatetable["wow"] = "�޸ĺ�"

print("mytable ����Ϊ wow ��Ԫ���� ", mytable["wow"])

-- �ͷű���
alternatetable = nil
print("alternatetable �� ", alternatetable)

-- mytable ��Ȼ���Է���
print("mytable ����Ϊ wow ��Ԫ���� ", mytable["wow"])

mytable = nil
print("mytable �� ", mytable)





fruits = {"banana","orange","apple"}
-- ���� table ���Ӻ���ַ���
print("���Ӻ���ַ��� ",table.concat(fruits))

-- ָ�������ַ�
print("���Ӻ���ַ��� ",table.concat(fruits,", "))

-- ָ������������ table
print("���Ӻ���ַ��� ",table.concat(fruits,", ", 2,3))





fruits = {"banana","orange","apple"}

-- ��ĩβ����
table.insert(fruits,"mango")
print("����Ϊ 4 ��Ԫ��Ϊ ",fruits[4])

-- ������Ϊ 2 �ļ�������
table.insert(fruits,2,"grapes")
print("����Ϊ 2 ��Ԫ��Ϊ ",fruits[2])

print("���һ��Ԫ��Ϊ ",fruits[5])
table.remove(fruits)
print("�Ƴ������һ��Ԫ��Ϊ ",fruits[5])
--print("�Ƴ������һ��Ԫ��Ϊ ",fruits[4])

for i, v in ipairs(fruits)
do
   print(i,v)
end


fruits = {"banana","orange","apple","grapes"}
print("����ǰ")
for k,v in ipairs(fruits) do
   print(k,v)
end

table.sort(fruits)
print("�����")
for k,v in ipairs(fruits) do
   print(k,v)
end



function table_maxn(t)
   local mn=nil;
   for k, v in pairs(t) do
      if(mn==nil) then
         mn=v
      end
      if mn < v then
         mn = v
      end
   end
   return mn
end
tbl = {[1] = 2, [2] = 6, [3] = 34, [26] =5}
print("tbl ���ֵ��", table_maxn(tbl))
print("tbl ���� ", #tbl)



function table_leng(t)
   local leng=0
   for k, v in pairs(t) do
      leng=leng+1
   end
   return leng;
end

