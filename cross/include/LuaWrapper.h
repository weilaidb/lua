#ifndef __LUA_WRAPPER_H__
#define __LUA_WRAPPER_H__
 
extern "C"
{
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
 
#pragma comment(lib, "liblua.dll.a")
}
 
class CLuaWrapper
{
public:
	// 初始化
	static void init();
	// 退出
	static void exit();
 
	// 执行
	static bool exe_lua_file(const char* fileName);
	// 注册C++函数到lua
	static void reg_fun2Lua(const char* funName, int(*c_fun)(lua_State* L));
 
};
 
#endif
 
