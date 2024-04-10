# lua_windows_build
Try to build Lua source codes using Visual Studio on Windows. Many thanks go to: https://blog.csdn.net/faybull/article/details/128749462

感谢上面这篇文章！照着做就能成功。另外需要注意以下几点：
1. 我下载的Lua源代码版本是5.2.4。从官网下载：https://lua.org/versions.html
2. 项目配置：C/C++ | 预处理器，添加_CRT_SECURE_NO_WARNINGS
3. liblua项目配置：常规 | 目标文件名，改成lua52

编译Release | x86，通过之后打开控制台程序，然后运行tests目录下的测试脚本：
1. lua {path}\test1.lua >> 如果看到控制台打印Lua的版本号，以及"Hello World"，说明一切就绪了！
2. lua {path}\test2_calldll.lua >> 主要测试在Lua中调用一个Windows DLL。这个DLL是特殊封装的，从https://github.com/luqiming666/simple-lua-c-dll 编译出来，并将luacdll.dll拷贝到lua.exe的相同目录下。