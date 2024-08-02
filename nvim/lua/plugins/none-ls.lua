return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,

				-- Ruby
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,

				-- JavaScript/TypeScript/HTML/CSS
				null_ls.builtins.formatting.prettier.with({
					filetypes = { "javascript", "typescript", "html", "css", "json" },
				}),
				--null_ls.builtins.diagnostics.eslint_d,

				-- Python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,

				-- C/C++
				null_ls.builtins.formatting.clang_format,
				--null_ls.builtins.diagnostics.cpplint,

				-- C#
				null_ls.builtins.formatting.csharpier,

				-- Bash
				null_ls.builtins.formatting.shfmt,
				--null_ls.builtins.diagnostics.shellcheck,
				null_ls.builtins.formatting.shellharden,

				-- Rust
				null_ls.builtins.formatting.rustywind,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
