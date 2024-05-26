local_conf := ~/.config/
git_conf := ./config/

install_all_laptop: install_yay install_zsh install_alacritty install_bspm install_dunst install_lazygit install_nvim install_picom install_polybar install_ripgrep install_rofi install_sxhkd set_wallpaper

get_all_laptop: get_alacritty get_bspwm get_dunst get_nvim get_picom get_polybar get_rofi get_sxhkd get_wallpaper

set_all_laptop: set_alacritty set_bspwm set_dunst set_nvim set_picom set_polybar set_rofi set_sxhkd set_wallpaper

install_all_pc: install_yay install_zsh install_alacritty install_lazygit install_nvim install_ripgrep install_rofi set_wallpaper

get_all_pc: get_alacritty get_nvim get_rofi get_wallpaper

set_all_pc: get_alacritty set_nvim set_rofi set_wallpaper

# ----- alacritty -----
install_alacritty: set_alacritty
	yay --noconfirm -S alacritty

get_alacritty:
	@echo "Getting files from alacritty:"
	@cp -rv $(local_conf)alacritty/* $(git_conf)alacritty/

set_alacritty:
	@echo "Setting files for alacritty:"
	@mkdir -pv $(local_conf)alacritty 
	@cp -rv $(git_conf)alacritty/* $(local_conf)alacritty/

# ----- bspwm -----
install_bspm: set_bspwm
	yay --noconfirm -S bspwm

get_bspwm:
	@echo "Getting files from bspwm:"
	@cp -rv $(local_conf)bspwm/* $(git_conf)bspwm/

set_bspwm:
	@echo "Setting files for bspwm:"
	@mkdir -pv $(local_conf)bspwm 
	@cp -rv $(git_conf)bspwm/* $(local_conf)bspwm/

# ----- dunst -----
install_dunst: set_dunst
	yay --noconfirm -S dunst

get_dunst:
	@echo "Getting files from dunst:"
	@cp -rv $(local_conf)dunst/* $(git_conf)dunst/

set_dunst:
	@echo "Setting files for dunst:"
	@mkdir -pv $(local_conf)dunst 
	@cp -rv $(git_conf)dunst/* $(local_conf)dunst/

# ----- lazygit -----
install_lazygit:
	yay --noconfirm -S lazygit

# ----- nvim -----
install_nvim: set_nvim
	yay --noconfirm -S neovim

get_nvim:
	@echo "Getting files from nvim:"
	@cp -rv $(local_conf)nvim/* $(git_conf)nvim/

set_nvim:
	@echo "Setting files for nvim:"
	@mkdir -pv $(local_conf)nvim 
	@cp -rv $(git_conf)nvim/* $(local_conf)nvim/

# ----- picom -----
install_picom: set_picom
	yay --noconfirm -S picom

get_picom:
	@echo "Getting files from picom:"
	@cp -rv $(local_conf)picom/* $(git_conf)picom/

set_picom:
	@echo "Setting files for picom:"
	@mkdir -pv $(local_conf)picom 
	@cp -rv $(git_conf)picom/* $(local_conf)picom/

# ----- polybar -----
install_polybar: set_polybar
	yay --noconfirm -S polybar

get_polybar:
	@echo "Getting files from polybar:"
	@cp -rv $(local_conf)polybar/* $(git_conf)polybar/

set_polybar:
	@echo "Setting files for polybar:"
	@mkdir -pv $(local_conf)polybar 
	@cp -rv $(git_conf)polybar/* $(local_conf)polybar/

# ----- ripgrep -----
install_ripgrep:
	yay --noconfirm -S ripgrep

# ----- rofi -----
install_rofi: set_rofi
	yay --noconfirm -S rofi

get_rofi:
	@echo "Getting files from rofi:"
	@cp -rv $(local_conf)rofi/* $(git_conf)rofi/

set_rofi:
	@echo "Setting files for rofi:"
	@mkdir -pv $(local_conf)rofi 
	@cp -rv $(git_conf)rofi/* $(local_conf)rofi/

# ----- sxhkd -----
install_sxhkd: set_sxhkd
	yay --noconfirm -S sxhkd

get_sxhkd:
	@echo "Getting files from sxhkd:"
	@cp -rv $(local_conf)sxhkd/* $(git_conf)sxhkd/

set_sxhkd:
	@echo "Setting files for sxhkd:"
	@mkdir -pv $(local_conf)sxhkd 
	@cp -rv $(git_conf)sxhkd/* $(local_conf)sxhkd/

# ----- wallpaper -----
get_wallpaper:
	@echo "Getting files from wallpaper:"
	@cp -rv $(local_conf)wallpaper/* $(git_conf)wallpaper/

set_wallpaper:
	@echo "Setting files for wallpaper:"
	@mkdir -pv $(local_conf)wallpaper 
	@cp -rv $(git_conf)wallpaper/* $(local_conf)wallpaper/

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
install_zsh:
	yay --noconfirm -S zsh
