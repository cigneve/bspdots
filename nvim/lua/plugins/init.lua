local present, packer = pcall(require, "plugins.packerinit")

if not present then
   return false
end

local use = packer.use

return packer.startup(function()
   use {
      "wbthomason/packer.nvim",
      event = "VimEnter",
   }
   use {
      "akinsho/bufferline.nvim",
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
         require "plugins.plugins.bufferline"
      end,
   }

   use {
      "nvim-treesitter/nvim-treesitter",
      event = "BufRead",
   }

   -- file managing , picker etc
   use {
      "ms-jpq/chadtree",
      setup = function()
          require("plugins.plugins.chadtree")
      end,

   }
   -- lsp stuff

   use {
      "neovim/nvim-lspconfig",
      opt = true,
   }

end)
