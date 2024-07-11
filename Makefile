local_conf := ~/.config/
git_conf := ./config/
year := $(shell date +%Y)

define install_software
	yay --noconfirm --needed -S $(1)
endef

define get_config
	@echo "Getting files from $(1):"
	cp -rv $(local_conf)$(1)/* $(git_conf)$(1)/
endef

define set_config
	@echo "Setting files for $(1):"
	@mkdir -pv $(local_conf)$(1) 
	@cp -rv $(git_conf)$(1)/* $(local_conf)$(1)/
endef

.PHONY: help $(MAKECMDGOALS)

help: ## Prints this text.
	@echo "Linux setup by Christoph Hehl - $(year)"
	@echo
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo
	@echo "All install rules also copy all respective configuration files onto your machine."

install_all_laptop: install_yay install_zsh install_alacritty install_bspwm install_dunst install_lazygit install_nvim install_picom install_polybar install_ripgrep install_rofi install_sxhkd set_wallpaper ## Install everything needed on a laptop.

get_all_laptop: get_alacritty get_bspwm get_dunst get_nvim get_picom get_polybar get_rofi get_sxhkd get_wallpaper ## Copy all current configuration files into this git repo (laptop).

set_all_laptop: set_alacritty set_bspwm set_dunst set_nvim set_picom set_polybar set_rofi set_sxhkd set_wallpaper ## Copy all files from the repo onto your machine (laptop).

install_all_pc: install_yay install_zsh install_alacritty install_lazygit install_nvim install_ripgrep install_rofi set_wallpaper ## Install everything needed on a PC.

get_all_pc: get_alacritty get_nvim get_rofi get_wallpaper ## Copy all current configuration files into this git repo (PC).

set_all_pc: get_alacritty set_nvim set_rofi set_wallpaper ## Copy all files from the repo onto your machine (PC).

info: ## Get info on all the other functions.
	@awk 'BEGIN {printf "\033[36m%-30s\033[0m %s\n", "install_alacritty", "Install alacritty to your system."}'

# ----- alacritty -----
install_alacritty: set_alacritty
	@$(call install_software,"alacritty")

get_alacritty:
	@$(call get_config,"alacritty")

set_alacritty:
	@$(call set_config,"alacritty")

# ----- bspwm -----
install_bspwm: set_bspwm
	@$(call install_software,"bspwm")

get_bspwm:
	@$(call get_config,"bspwm")

set_bspwm:
	@$(call set_config,"bspwm")

# ----- dunst -----
install_dunst: set_dunst
	@$(call install_software,"dunst")

get_dunst:
	@$(call get_config,"dunst")

set_dunst:
	@$(call set_config,"dunst")

# ----- kitty -----
install_kitty: set_kitty
	@$(call install_software,"kitty")

get_kitty:
	@$(call get_config,"kitty")

set_kitty:
	@$(call set_config,"kitty")

# ----- lazygit -----
install_lazygit:
	@$(call install_software,"lazygit")

# ----- nvim -----
install_nvim: set_nvim
	@$(call install_software,"neovim")

get_nvim:
	@$(call get_config,"nvim")

set_nvim:
	@$(call set_config,"nvim")

# ----- picom -----
install_picom: set_picom
	@$(call install_software,"picom")

get_picom:
	@$(call get_config,"picom")

set_picom:
	@$(call set_config,"picom")

# ----- polybar -----
install_polybar: set_polybar
	@$(call install_software,"polybar")

get_polybar:
	@$(call get_config,"polybar")

set_polybar:
	@$(call set_config,"polybar")

# ----- ripgrep -----
install_ripgrep:
	@$(call install_software,"ripgrep")

# ----- rofi -----
install_rofi: set_rofi
	@$(call install_software,"rofi")

get_rofi:
	@$(call get_config,"rofi")

set_rofi:
	@$(call set_config,"rofi")

# ----- sxhkd -----
install_sxhkd: set_sxhkd
	@$(call install_software,"sxhkd")

get_sxhkd:
	@$(call get_config,"sxhkd")

set_sxhkd:
	@$(call set_config,"sxhkd")

# ----- wallpaper -----
get_wallpaper:
	@$(call get_config,"wallpaper")

set_wallpaper:
	@$(call set_config,"wallpaper")

# ----- vimrc -----
get_vimrc:
	@echo "Getting .vimrc:"
	@cp -v ~/.vimrc ./config/.vimrc

set_vimrc:
	@echo "Setting .vimrc:"
	@cp -v ./config/.vimrc ~/.vimrc

# ----- yay -----
install_yay:
	sudo pacman --noconfirm -S yay

# ----- zsh -----
install_zsh: set_zshrc
	@$(call install_software,"zsh")

get_zshrc:
	@echo "Getting .zshrc:"
	@cp -v ~/.zshrc ./config/.zshrc

set_zshrc:
	@echo "Setting .zshrc:"
	@cp -v ./config/.zshrc ~/.zshrc


