a = 10
while(a< 20)
do
	print("a value:", a)
	a = a + 1
end




for i = 10, 1, -1 do
	print(i)
end


function f(x)
	print("function")
	return x*2
end

for i = 1, f(5) do 
	print(i)
end



--打印数组ａ的所有值
a = {"one", "two", "three"}
for i,v in ipairs(a) do
	print(i,v)
end


days = {"Sunday", "Monday", "Tuesday", "wednesday", "Thursday", "Friday", "saturday"}
for i,v in ipairs(days) do
	print(v)
end



a = 10
repeat
	print("a value is:", a)
	a = a + 1
until(a > 15)





j = 2
for i = 2,10 do
	for j = 2,(i/j), 2 do
		if( not(i%j))
		then
			break
		end
		if(j > (i/j))then
			print("i value is", i)
		end
	end
end




a = 10

while(a < 20)
do
	print("a value is:", a)
	a = a+1
	if(a > 15)
	then
		break
	end
end


--local a = 1
--::label:: print("--- goto label ---")

--a = a+1
--if a < 3 then
--    goto label   -- a 小于 3 的时候跳转到标签 label
--end





i = 0
::s1:: do
  print(i)
  i = i+1
end
if i>3 then
  os.exit()   -- i 大于 3 时退出
end
goto s1



