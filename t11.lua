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
   -- 闭包函数
   return function ()
      index = index + 1
      if index <= count
      then
         --  返回迭代器的当前元素
         return collection[index]
      end
   end
end

for element in elementIterator(array)
do
   print(element)
end





-- 初始化表
mytable = {}

-- 指定值
mytable[1]= "Lua"

-- 移除引用
mytable = nil
-- lua 垃圾回收会释放内存



-- 简单的 table
mytable = {}
print("mytable 的类型是 ",type(mytable))
print(utf8.len("mytable 的类型是 "))

mytable[1]= "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是 ", mytable[1])
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- alternatetable和mytable的是指同一个 table
alternatetable = mytable

print("alternatetable 索引为 1 的元素是 ", alternatetable[1])
print("mytable 索引为 wow 的元素是 ", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- 释放变量
alternatetable = nil
print("alternatetable 是 ", alternatetable)

-- mytable 仍然可以访问
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil
print("mytable 是 ", mytable)





fruits = {"banana","orange","apple"}
-- 返回 table 连接后的字符串
print("连接后的字符串 ",table.concat(fruits))

-- 指定连接字符
print("连接后的字符串 ",table.concat(fruits,", "))

-- 指定索引来连接 table
print("连接后的字符串 ",table.concat(fruits,", ", 2,3))





fruits = {"banana","orange","apple"}

-- 在末尾插入
table.insert(fruits,"mango")
print("索引为 4 的元素为 ",fruits[4])

-- 在索引为 2 的键处插入
table.insert(fruits,2,"grapes")
print("索引为 2 的元素为 ",fruits[2])

print("最后一个元素为 ",fruits[5])
table.remove(fruits)
print("移除后最后一个元素为 ",fruits[5])
--print("移除后最后一个元素为 ",fruits[4])

for i, v in ipairs(fruits)
do
   print(i,v)
end


fruits = {"banana","orange","apple","grapes"}
print("排序前")
for k,v in ipairs(fruits) do
   print(k,v)
end

table.sort(fruits)
print("排序后")
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
print("tbl 最大值：", table_maxn(tbl))
print("tbl 长度 ", #tbl)


array = {}

for i= -2, 2 do
   array[i] = i *2
end

for i = -2,2 do
   print(array[i])
end

-- 鍒濆鍖栨暟缁�
array = {}
for i=1,3 do
   array[i] = {}
      for j=1,3 do
         array[i][j] = i*j
      end
end

-- 璁块棶鏁扮粍
for i=1,3 do
   for j=1,3 do
      print(array[i][j])
   end
end




-- 鍒濆鍖栨暟缁�
array = {}
maxRows = 3
maxColumns = 3
for row=1,maxRows do
   for col=1,maxColumns do
      array[row*maxColumns +col] = row*col
   end
end

-- 璁块棶鏁扮粍
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

