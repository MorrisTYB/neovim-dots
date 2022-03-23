-----@diagnostic disable: duplicate-index, undefined-global

--local lsp_installer = require("nvim-lsp-installer")
--lsp_installer.on_server_ready(function(server)
--	local opts = {}
--	if server.name == "rust_analyzer" then
--		require("rust-tools").setup({
--			tools = {
--				autoSetHints = true,
--				hover_with_actions = true,
--				runnables = {
--					use_telescope = true,
--				},
--				inlay_hints = {
--					show_parameter_hints = true,
--					parameter_hints_prefix = "=>",
--					other_hints_prefix = "",
--				},

--				hover_actions = {
--					auto_focus = true,
--				},
--			},

--			-- All the opts here send to nvim-lspconfig
--			-- They override the defaults set by rust--tools.nvim
--			server = {
--				--on_attach is a callback when the language server attaches to the
--				--buffer
--				settings = {
--					["rust-analyzer"] = {
--						checkOnSave = {
--							command = "clippy",
--						},
--					},
--				},
--			},
--			server = vim.tbl_deep_extend("force", server:get_default_options(), opts),
--		})
--		server:attach_buffers()
--		require("rust-tools").start_standalone_if_required()
--	else
--		server:setup(opts)
--	end
--end)

---- nvim_lsp object
---- local nvim_lsp = require'lspconfig'
---- local opts = {
----     tools = {
----         autoSetHints = true,
----         hover_with_actions = true,
----         runnables = {
----             use_telescope = true
----         },
----         inlay_hints = {
----             show_parameter_hints = true,
----             parameter_hints_prefix = "=>",
----               other_hints_prefix = "",
----           },
----         hover_actions = {
----           auto_focus = true
----           },
----     },
----     -- all the opts to send to nvim-lspconfig
----     -- these override the defaults set by rust-tools.nvim
----     -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
----     server = {
----         -- on_attach is a callback called when the language server attachs to the buffer
----         -- on_attach = on_attach,
----         settings = {
----             -- to enable rust-analyzer settings visit:
----             -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
----             ["rust-analyzer"] = {
----                 -- enable clippy on save
----                 checkOnSave = {
----                     command = "clippy"
----                 },
----             }
----         }
----     },
---- }

--require("rust-tools").setup(opts)

--require("nvim-treesitter.configs").setup({
--	ensure_installed = "maintained",
--	sync_install = false,
--	highlight = {
--		enable = true,
--	},
--})

--require("toggleterm").setup({
--	open_mapping = [[<c-\>]],
--	shade_terminals = true,
--	direction = "float",
--	close_on_exit = true,
--	shell = zsh,
--	float_opts = {
--		border = "curved",
--		width = 100,
--		height = 50,
--	},
--})

---- require'lspconfig'.cmake.setup{}
---- require'lspconfig'.clangd.setup{}
---- require'lspconfig'.vimls.setup{}
---- require'lspconfig'.sumneko_lua.setup{}
---- require'lspconfig'.hls.setup{}

--local cmp = require("cmp")
--cmp.setup({
--	snippet = {
--		-- REQUIRED by nvim-cmp. get rid of it once we can
--		expand = function(args)
--			vim.fn["vsnip#anonymous"](args.body)
--		end,
--	},
--	mapping = {
--		["<Tab>"] = cmp.mapping.confirm({ select = true }),
--		-- ['<C-j>'] = cmp.select_next_item(),
--		-- ['<C-k>'] = cmp.select_previous_item(),

--		-- ["<Tab>"] = cmp.mapping(function(fallback)
--		--     if cmp.visible() then
--		--       cmp.select_next_item()
--		--     elseif luasnip.expandable() then
--		--       luasnip.expand()
--		--     elseif luasnip.expand_or_jumpable() then
--		--       luasnip.expand_or_jump()
--		--     elseif check_backspace() then
--		--       fallback()
--		--     else
--		--       fallback()
--		--     end
--		--   end, {
--		--     "i",
--		--     "s",
--		--   }),
--		--   ["<S-Tab>"] = cmp.mapping(function(fallback)
--		--     if cmp.visible() then
--		--       cmp.select_prev_item()
--		--     elseif luasnip.jumpable(-1) then
--		--       luasnip.jump(-1)
--		--     else
--		--       fallback()
--		--     end
--		--   end, {
--		--     "i",
--		--     "s",
--		--   }),
--	},
--	sources = cmp.config.sources({
--		-- TODO: currently snippets from lsp end up getting prioritized -- stop that!
--		{ name = "nvim_lsp" },
--	}, {
--		{ name = "path" },
--	}),
--	experimental = {
--		ghost_text = true,
--	},
--})

---- Enable completing paths in command mode
---- cmp.setup.cmdline(':', {
----   sources = cmp.config.sources({
----     { name = 'path' }
----   })
---- })

---- require('nulls-ls').setup({
----   debug = false,
----   sources = {
----     formatting.stylua,
----     formatting.clang_format,
----     code_actions.gitsigns,
----   }
---- })
