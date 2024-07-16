local keymap = vim.keymap.set
local opt = {
	noremap = true,
	silent = true,
}
keymap('n','<leader>x','<cmd>bd<CR>')
keymap('n','<leader>test','<cmd>CompetiTest run<CR>')
keymap('n','<leader>mess','<cmd>Telescope notify<CR>')
keymap("n", "<C-/>", "gcc", { noremap = false })
keymap("v", "<C-/>", "gcc", { noremap = false })

-- dap
	-- 结束
	keymap(
		"n",
		"<S-F5>",
		":lua require'dap'.terminate()<CR>"
			-- ":lua require'dap'.disconnect()<CR>"
			.. ":lua require'dap'.close()<CR>"
			.. ":lua require'dap.repl'.close()<CR>"
			.. ":lua require'dapui'.close()<CR>"
			.. ":lua require('dap').clear_breakpoints()<CR>"
			.. "<C-w>o<CR>",
		opt
	)
	-- 继续
	keymap("n", "<C-F5>", ":lua require'dap'.continue()<CR>", opt)
	-- 设置断点
	keymap("n", "<F6>", ":lua require'dap'.toggle_breakpoint()<CR>", opt)
	keymap("n", "<S-F6>", ":lua require'dap'.clear_breakpoints()<CR>", opt)
	--  stepOver, stepOut, stepInto
	keymap("n", "<F12>", ":lua require'dap'.step_over()<CR>", opt)
	keymap("n", "<S-F7>", ":lua require'dap'.step_out()<CR>", opt)
	keymap("n", "<F7>", ":lua require'dap'.step_into()<CR>", opt)
	-- 弹窗
	keymap("n", "<S-F12>", ":lua require'dapui'.eval()<CR>", opt)
	-- 重启
	keymap("n", "<F10>", ":lua require'dap'.restart()<CR>", opt)
	keymap("n", "<S-F10>", ":lua require'dap'.terminate()<CR>", opt)
vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	callback = function()
		-- -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<F5>",
			-- "<ESC>:w<CR>:TermExec direction=float cmd=\"g++ *.cpp -I ./ -o %:t:r.exe ; ./%:t:r.exe\"<CR>",
			'<ESC>:w<CR>:TermExec direction=float cmd="g++ %:t:r.cpp -o %:t:r.exe ; ./%:t:r.exe"<CR>',
			{ silent = true, noremap = true }
		)
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<F4>",
			-- "<ESC>:w<CR>:!g++ *.cpp -I ./ -o %:t:r.exe<CR>",
			"<ESC>:w<CR>:!md dist<CR>:!g++ %:t:r.cpp -o ./dist/%:t:r.exe<CR>",
			{ silent = true, noremap = true }
		)
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<C-F4>",
			-- "<ESC>:w<CR>:!g++ -g *.cpp -I ./ -o %:t:r.exe<CR>",
			"<ESC>:w<CR>:!g++ -g %:t:r.cpp -o %:t//dist//:r.exe<CR>:lua require'dap'.continue()<CR>",
			{ silent = true, noremap = true }
		)
	end,
})
