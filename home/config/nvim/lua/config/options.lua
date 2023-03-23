-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- This file is automatically loaded by plugins.config

vim.opt.shell = "zsh"
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.wildignore:append{ "*/node_modules/*" }

vim.g.markdown_fenced_languages = {
  "ts=typescript"
}