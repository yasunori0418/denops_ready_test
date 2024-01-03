.DEFAULT_GOAL := help
MAKEFLAGS += --always-make

help: ## subcommand list and description.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: ## install denops.vim
	@git clone https://github.com/vim-denops/denops.vim.git plug/denops.vim

start: ## start minimal configuration
	@NVIM_APPNAME=denops_ready_test nvim
