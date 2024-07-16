-- local dap = require('dap')
-- dap.adapters.cppdbg = {
--   id = 'cppdbg',
--   type = 'executable',
--   command = "D:\\Extension\\cpptools-win64\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe",
--   options = {
--     detached = false
--   }
-- }
-- dap.configurations.cpp = {
 -- {
 --   name = "Launch file",
 --   type = "cppdbg",
 --   request = "launch",
 --   program = function()
 --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
 --   end,
 --   cwd = '${workspaceFolder}',
 --   stopAtEntry = true,
 -- },
--  {
--    name = 'Attach to gdbserver :1234',
--    type = 'cppdbg',
--    request = 'launch',
--    MIMode = 'gdb',
--    miDebuggerServerAddress = 'localhost:1234',
--    miDebuggerPath = '/usr/bin/gdb',
--    cwd = '${workspaceFolder}',
--    program = function()
--      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--    end,
--  }, 
  -- {     name= "Launch file",
  --       type= "cppdbg",
  --       request= "launch",
  --       program= "${fileDirname}\\dist\\${fileBasenameNoExtension}.exe",
  --       stopAtEntry= false,
  --       cwd= "${fileDirname}",
  --       externalConsole= false,
  --       MIMode= "gdb",
  --       miDebuggerPath= "D:\\mingw64\\bin\\gdb.exe",
  --       setupCommands= {
  --         {
  --           description = "Enable pretty-printing for gdb",
  --           text = "-enable-pretty-printing",
  --           ignoreFailures = true
  --         },
  --         {
  --           description= "Set Disassembly Flavor to Intel",
  --           text= "-gdb-set disassembly-flavor intel",
  --           ignoreFailures= true
  --         }
  --       },
  -- }
-- 	{
-- 		name = "Launch",
-- 		type = "cppdbg",
-- 		request = "launch",
-- 		program = function ()
-- 			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
-- 		end,
-- 		cwd = '${workspaceFolder}',
-- 		stopOnEntry = false,
-- 		args = {},
-- 		runInTerminal = false,
-- 		-- postRunCommands = {'process handle -p true -s false -n false SIGWINCH'}
-- 	},
-- 	{
-- 		env = function()
-- 			local variables = {}
-- 			for k, v in paris(vim.fn.environ()) do
-- 				table.insert(variables, string.format("%s=%s", k, v))
-- 			end
-- 			return variables
-- 		end
-- 	}
-- }
--
-- dap.configurations.c = dap.configurations.cpp
-- dap.configurations.rust = dap.configurations.cpp

local dap = require('dap')

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  -- command = 'D:\\CppApp\\neovim\\nvim-data\\mason\\bin\\OpenDebugAD7.cmd',
  -- command = "D:\\Extension\\cpptools-win64\\extension\\debugAdapters\\bin\\OpenDebugAD7.cmd",
  command = "C:\\Users\\Candy\\AppData\\Local\\nvim-data\\mason\\bin\\OpenDebugAD7.cmd",
  options = {
    detached = false
  }
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '\\' .. vim.fn.expand('%:r') .. '.exe', 'file')
    end,
    -- program = function()
    --   return (vim.fn.getcwd() .. '\\' .. vim.fn.expand('%:r') .. '.exe')
    -- end,
    -- program = '${workspaceFolder}'
    cwd = '${workspaceFolder}',
    stopAtEntry = false,
    externalConsole = false,
    MIMode = "gdb",
    -- miDebuggerPath = "D:\\CppApp\\llvm-mingw\\bin\\lldb.exe",
  },
  -- {
  --   name = 'Attach to gdbserver :1234',
  --   type = 'cppdbg',
  --   request = 'launch',
  --   MIMode = 'gdb',
  --   miDebuggerServerAddress = 'localhost:1234',
  --   --miDebuggerPath = '/usr/bin/gdb',
  --   cwd = '${workspaceFolder}',
  --   program = function()
  --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  --   end,
  -- },
}

setupCommands = {  
  { 
     text = '-enable-pretty-printing',
     description =  'enable pretty printing',
     ignoreFailures = false 
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
