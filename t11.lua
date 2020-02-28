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
   -- ±Õ°üº¯Êý
   return function ()
      index = index + 1
      if index <= count
      then
         --  ·µ»Øµü´úÆ÷µÄµ±Ç°ÔªËØ
         return collection[index]
      end
   end
end

for element in elementIterator(array)
do
   print(element)
end





-- ³õÊ¼»¯±í
mytable = {}

-- Ö¸¶¨Öµ
mytable[1]= "Lua"

-- ÒÆ³ýÒýÓÃ
mytable = nil
-- lua À¬»ø»ØÊÕ»áÊÍ·ÅÄÚ´æ



-- ¼òµ¥µÄ table
mytable = {}
print("mytable µÄÀàÐÍÊÇ ",type(mytable))
print(utf8.len("mytable µÄÀàÐÍÊÇ "))

mytable[1]= "Lua"
mytable["wow"] = "ÐÞ¸ÄÇ°"
print("mytable Ë÷ÒýÎª 1 µÄÔªËØÊÇ ", mytable[1])
print("mytable Ë÷ÒýÎª wow µÄÔªËØÊÇ ", mytable["wow"])

-- alternatetableºÍmytableµÄÊÇÖ¸Í¬Ò»¸ö table
alternatetable = mytable

print("alternatetable Ë÷ÒýÎª 1 µÄÔªËØÊÇ ", alternatetable[1])
print("mytable Ë÷ÒýÎª wow µÄÔªËØÊÇ ", alternatetable["wow"])

alternatetable["wow"] = "ÐÞ¸Äºó"

print("mytable Ë÷ÒýÎª wow µÄÔªËØÊÇ ", mytable["wow"])

-- ÊÍ·Å±äÁ¿
alternatetable = nil
print("alternatetable ÊÇ ", alternatetable)

-- mytable ÈÔÈ»¿ÉÒÔ·ÃÎÊ
print("mytable Ë÷ÒýÎª wow µÄÔªËØÊÇ ", mytable["wow"])

mytable = nil
print("mytable ÊÇ ", mytable)





fruits = {"banana","orange","apple"}
-- ·µ»Ø table Á¬½ÓºóµÄ×Ö·û´®
print("Á¬½ÓºóµÄ×Ö·û´® ",table.concat(fruits))

-- Ö¸¶¨Á¬½Ó×Ö·û
print("Á¬½ÓºóµÄ×Ö·û´® ",table.concat(fruits,", "))

-- Ö¸¶¨Ë÷ÒýÀ´Á¬½Ó table
print("Á¬½ÓºóµÄ×Ö·û´® ",table.concat(fruits,", ", 2,3))





fruits = {"banana","orange","apple"}

-- ÔÚÄ©Î²²åÈë
table.insert(fruits,"mango")
print("Ë÷ÒýÎª 4 µÄÔªËØÎª ",fruits[4])

-- ÔÚË÷ÒýÎª 2 µÄ¼ü´¦²åÈë
table.insert(fruits,2,"grapes")
print("Ë÷ÒýÎª 2 µÄÔªËØÎª ",fruits[2])

print("×îºóÒ»¸öÔªËØÎª ",fruits[5])
table.remove(fruits)
print("ÒÆ³ýºó×îºóÒ»¸öÔªËØÎª ",fruits[5])
--print("ÒÆ³ýºó×îºóÒ»¸öÔªËØÎª ",fruits[4])

for i, v in ipairs(fruits)
do
   print(i,v)
end


fruits = {"banana","orange","apple","grapes"}
print("ÅÅÐòÇ°")
for k,v in ipairs(fruits) do
   print(k,v)
end

table.sort(fruits)
print("ÅÅÐòºó")
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
print("tbl ×î´óÖµ£º", table_maxn(tbl))
print("tbl ³¤¶È ", #tbl)


array = {}

for i= -2, 2 do
   array[i] = i *2
end

for i = -2,2 do
   print(array[i])
end

-- åˆå§‹åŒ–æ•°ç»„
array = {}
for i=1,3 do
   array[i] = {}
      for j=1,3 do
         array[i][j] = i*j
      end
end

-- è®¿é—®æ•°ç»„
for i=1,3 do
   for j=1,3 do
      print(array[i][j])
   end
end




-- åˆå§‹åŒ–æ•°ç»„
array = {}
maxRows = 3
maxColumns = 3
for row=1,maxRows do
   for col=1,maxColumns do
      array[row*maxColumns +col] = row*col
   end
end

-- è®¿é—®æ•°ç»„
for row=1,maxRows do
   for col=1,maxColumns do
      print(array[row*maxColumns +col])
   end
end







function table_leng(t)
   local leng=0
   for k, v in pairs(t) do
      leng=leng+1
   end
   return leng;
end

