final: prev: 
let
  nvimConfigPath = "/home/piq9117/dotfiles/overlays/nvim/";
in {
  neovim = prev.neovim.override { 
    viAlias = true;
    vimAlias = true;
    configure = {
      customRC = ''
	source ${nvimConfigPath}/theme.lua
        source ${nvimConfigPath}/mappings.lua
        source ${nvimConfigPath}/gitsigns.lua
	source ${nvimConfigPath}/lualine.lua
	source ${nvimConfigPath}/fidget.lua
	source ${nvimConfigPath}/lspconfig.lua
	source ${nvimConfigPath}/comment.lua
	source ${nvimConfigPath}/diagnostic.lua
	source ${nvimConfigPath}/lspconfig.lua
	source ${nvimConfigPath}/which-key.lua
	source ${nvimConfigPath}/treesitter.lua
	source ${nvimConfigPath}/neodev.lua
	source ${nvimConfigPath}/telescope.lua
	source ${nvimConfigPath}/blankline.lua
	source ${nvimConfigPath}/oil.lua
	source ${nvimConfigPath}/toggleterm.lua
	source ${nvimConfigPath}/orgmode.lua
	source ${nvimConfigPath}/greeter.lua
      '';
      packages.main.start = with final.vimPlugins; [
        cmp-nvim-lsp
	cmp-path
	cmp_luasnip
	comment-nvim
	fidget-nvim
	friendly-snippets
	gitsigns-nvim
	indent-blankline-nvim
	lsp-zero-nvim
	lualine-nvim
	luasnip
	neodev-nvim
	nvim-cmp
	nvim-lspconfig
	nvim-treesitter
	nvim-treesitter-textobjects
	orgmode
	plenary-nvim
	telescope-file-browser-nvim
	telescope-fzf-native-nvim
	telescope-nvim
	vim-fugitive
	vim-rhubarb
	vim-sleuth
	which-key-nvim
	oil-nvim
	toggleterm-nvim
	onedarkpro-nvim
	alpha-nvim

	(nvim-treesitter.withPlugins (p: [p.lua p.typescript p.tsx p.javascript p.vimdoc p.vim p.bash]))
      ];
    };
  };
}

