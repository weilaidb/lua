#include "LuaWrapper.h"
 
lua_State* g_lua_state = NULL;
 
// 获取Lua栈内信息
// 获取Lua文件名 行数
//static void do_log_message(void(*log)(const char* file_name, int line_num, const char* msg), const char* msg) 
//{
//	lua_Debug info;
//	int depth = 0;
//	while (lua_getstack(g_lua_state, depth, &info)) {
//
//		lua_getinfo(g_lua_state, "S", &info);
//		lua_getinfo(g_lua_state, "n", &info);
//		lua_getinfo(g_lua_state, "l", &info);
//
//		if (info.source[0] == '@') {
//			log(&info.source[1], info.currentline, msg);
//			return;
//		}
//
//		++depth;
//	}
//	if (depth == 0) {
//		log("trunk", 0, msg);
//	}
//}
//
//void log_print(const char* file_name, int line_num, const char* msg)
//{
//	printf("%s:%d \r\n%s\r\n", file_name, line_num, msg);
//}
 
void CLuaWrapper::init()
{
	g_lua_state = luaL_newstate();
	luaL_openlibs(g_lua_state);
}
 
void CLuaWrapper::exit()
{
	if (g_lua_state != NULL)
	{
		lua_close(g_lua_state);
		g_lua_state = NULL;
	}
}
 
bool CLuaWrapper::exe_lua_file(const char* fileName)
{
	if (luaL_dofile(g_lua_state, fileName))
	{
		// 发生错误时
		//const char* msg = luaL_checkstring(g_lua_state, -1);
		//if (msg) { // file_name, line_num
		//	do_log_message(log_print, msg);
		//}
		return false;
	}
	return true;
}
 
void CLuaWrapper::reg_fun2Lua(const char* funName, int(*c_fun)(lua_State* L))
{
	lua_pushcfunction(g_lua_state, c_fun);
	lua_setglobal(g_lua_state, funName);
}
