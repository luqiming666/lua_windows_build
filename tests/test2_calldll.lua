
print(_VERSION)
print(package.cpath)

luacdll = require("luacdll")
if luacdll ~= nil then
    r = luacdll.MultTwoNumbers(5.6, 2.17)
else
    print("Failed to load the DLL")
end
