# Infinemen's DWM desktop
my personal desktop based on dwm(http://dwm.suckless.org/)

  - patches
    - alpha
    - autostart
    - pertag
    - rotatestack
    - one in dwmblocks' patches folder

  - SatusBar
    - dwmblocks (https://github.com/ashish-yadav11/dwmblocks.git)

  - Auto Lock
    - xidlehook(AUR)

# Software
  - rofi
  - vim
  - doom emacs (https://github.com/hlissner/doom-emacs.git)
  - betterlockscreen (archlinuxcn)
  - asus motherboard driver(AUR)
  - libxft-brga-git (AUR)
  - st (suckless.org)
  - mathpix(AUR)
  - task spooler

# Hats off to all the developers. 

# ATTENTIONS!!!
1. the unicode emoji are disabled by default in dwm and dmenu. We should comment the iscol code snippet to enable unicode emoji. libxft-brga-git is also needed because the libxft package has some bugs.
2. In dwm config.h file, should give the additional corresponding unicode emoji font (such as Joypixels font).
3. betterlockscreen need creat a folder ~/.cache/i3lock/current/ before run betterlockscreen.
