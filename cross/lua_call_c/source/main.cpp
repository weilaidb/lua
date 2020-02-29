#include <iostream>
using namespace std;
#include "LuaWrapper.h"
//#include "lua.h"
//#include "lauxlib.h"
//#include "lualib.h"
 
// 原函数
static int add(int x, int y)
{
	return x + y;
}
 
// 给Lua调用的函数
static int add_tolua(lua_State* L)
{
	printf("此处被Lua调用了!\r\n");
	// 此处获取Lua传过来的参数
	/* 得到参数个数 */
	int n = lua_gettop(L);
	printf("add函数(Lua脚本内)传参个数:%d个\r\n", n);
	//int x = 0, y = 0;
	//if (lua_isnumber(L, -1)) {
	//	y = lua_tonumber(L, -1);
	//}
	//if (lua_isnumber(L, -2)) {
	//	x =  lua_tonumber(L, -2);
	//}
 

	int y = luaL_checkint(L, -1);
	int x = luaL_checkint(L, -2);
	// end
 
	// 调用C函数
	int sum = add(x, y);
	// 结果压入Lua栈
	lua_pushnumber(L, sum);
	// end
 
	// 返回1个值
	return 1; 
}
 

// 原函数
static int sub(int x, int y)
{
	return x - y;
}
 
// 给Lua调用的函数
static int sub_tolua(lua_State* L)
{
//	printf("此处被Lua调用了!\r\n");
	// 此处获取Lua传过来的参数
	/* 得到参数个数 */
	int n = lua_gettop(L);
	printf("sub函数(Lua脚本内)传参个数:%d个\r\n", n);
	//int x = 0, y = 0;
	//if (lua_isnumber(L, -1)) {
	//	y = lua_tonumber(L, -1);
	//}
	//if (lua_isnumber(L, -2)) {
	//	x =  lua_tonumber(L, -2);
	//}
 

	int y = luaL_checkint(L, -1);
	int x = luaL_checkint(L, -2);
	// end
 
	// 调用C函数
	int sum = sub(x, y);
	// 结果压入Lua栈
	lua_pushnumber(L, sum);
	// end
 
	// 返回1个值
	return 1; 
}
 


int main()
{
	//1.初始化Lua  
	CLuaWrapper::init();
 
	// 注册函数
	CLuaWrapper::reg_fun2Lua("add", add_tolua);

	// 注册函数
	CLuaWrapper::reg_fun2Lua("addx", add_tolua);
 	CLuaWrapper::reg_fun2Lua("sub" , sub_tolua);
 
	// 执行Lua脚本
	CLuaWrapper::exe_lua_file("test.lua");
 
	// 退出关闭Lua
	CLuaWrapper::exit();
	//system("pause");
	return 0;
}

