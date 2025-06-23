-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--[[
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c" },
	callback = function()
		vim.schedule(function()
			-- vim.keymap.set("n", "<F9>", ":w <bar> !gcc % -lm -Wall -Wextra -Wconversion -Wshadow<CR>")
			-- vim.keymap.set("n", "<F10>", ":term ./a.out<CR>")

			vim.keymap.set("n", "<F9>", function()
				vim.cmd("w | term gcc % -Wall -Wextra -Wconversion -Wshadow -fsanitize=address,undefined")
			end)
			vim.keymap.set("n", "<F10>", function()
				vim.cmd("term ./a.out;")
				-- vim.cmd("startinsert!")
			end)
		end)
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp" },
	callback = function()
		vim.schedule(function()
			vim.keymap.set("n", "<F9>", function()
				vim.cmd("w | term g++ -std=c++23 % -Wall -Wextra -Wconversion -Wshadow -fsanitize=address,undefined")
			end)
			vim.keymap.set("n", "<F10>", function()
				vim.cmd("term ./a.out;")
				-- vim.cmd("startinsert!")
			end)
		end)
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "tex" },
	callback = function()
		vim.schedule(function()
			vim.keymap.set("n", "<F9>", function()
				vim.cmd("w | term pdflatex %")
			end)
			vim.keymap.set("n", "<F10>", ":!zathura %:r.pdf &<CR>")
		end)
	end,
})
--]]
