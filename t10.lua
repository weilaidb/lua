string = "Lua Tutorial"
-- 查找字符串
print(string.find(string,"Tutorial"))
reversedString = string.reverse(string)
print("新字符串为",reversedString)


print(string.find("Hello  Lua user", "Lua", 1) )
print(string.reverse("Lua"))
print(string.format("the value is:%d",4))
print(string.char(97,98,99,100))
print(string.byte("ABCD",2))
print(string.byte("ABCD"))
print(string.len("abc"))
print(string.rep("abcd ",3))
print("www.runoob.".."com")
for word in string.gmatch("Hello Lua user", "%a+") do print(word) end

for word in string.gmatch("Hello Lua user 1 2 3343 34dd", "%d+") do print(word) end

print(string.match("I have 2 questions for you.", "%d+ %a+"))
print(string.format("%d, %q", string.match("I have 2 questions for you.", "(%d+) (%a+)")))

string1 = "Lua";
print(string.upper(string1))
print(string.lower(string1))


string = "Lua Tutorial"
-- 查找字符串
print(string.find(string,"Tutorial"))
reversedString = string.reverse(string)
print("新字符串为",reversedString)


string1 = "Lua"
string2 = "Tutorial"
number1 = 10
number2 = 20
-- 基本字符串格式化
print(string.format("基本格式化 %s %s",string1,string2))
-- 日期格式化
date = 2; month = 1; year = 2014
print(string.format("日期格式化 %02d/%02d/%03d", date, month, year))
-- 十进制格式化
print(string.format("%.4f",1/3))





print(string.format("%c", 83))                 -- 输出S
print(string.format("%+d", 17.0))              -- 输出+17
print(string.format("%05d", 17))               -- 输出00017
print(string.format("%o", 17))                 -- 输出21
print(string.format("%u", 3.14))               -- 输出3
print(string.format("%x", 13))                 -- 输出d
print(string.format("%X", 13))                 -- 输出D
print(string.format("%e", 1000))               -- 输出1.000000e+03
print(string.format("%E", 1000))               -- 输出1.000000E+03
print(string.format("%6.3f", 13))              -- 输出13.000
print(string.format("%q", "One\nTwo"))         -- 输出"One\
                                        -- 　　Two"
print(string.format("%s", "monkey"))           -- 输出monkey
print(string.format("%10s", "monkey"))         -- 输出    monkey
print(string.format("%5.3s", "monkey"))        -- 输出  mon





-- 字符转换
-- 转换第一个字符
print(string.byte("Lua"))
-- 转换第三个字符
print(string.byte("Lua",3))
-- 转换末尾第一个字符
print(string.byte("Lua",-1))
-- 第二个字符
print(string.byte("Lua",2))
-- 转换末尾第二个字符
print(string.byte("Lua",-2))

-- 整数 ASCII 码转换为字符
print(string.char(97))




string1 = "www."
string2 = "runoob"
string3 = ".com"
-- 使用 .. 进行字符串连接
print("连接字符串",string1..string2..string3)

-- 字符串长度
print("字符串长度 ",string.len(string2))

-- 字符串复制 2 次
repeatedString = string.rep(string2,2)
print(repeatedString)



s = "Deadline is 30/05/1999, firm"
date = "%d%d/%d%d/%d%d%d%d"
print(string.sub(s, string.find(s, date)))    --> 30/05/1999


print(string.gsub("hello, up-down!", "%A", "."))







