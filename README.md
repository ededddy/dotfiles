# Dotfiles
I mostly use VSCode, but it feels slow
so I prepared neovim setup for future uses

# Environment 
Bases on Windows 10 w/ Windows Terminal 
Shell : Either Powershell or Git Bash
Neovim 0.5

# Use
1. Install scoop & choco
2. Install sudo
```choco install sudo```
3. Install neofetch
```scoop install neofetch```
4. Install neovim
```choco install neovim```
5. Put `coc-settings.json` & `init.vim` into
``` C:\Users\{username}\AppData\Local\nvim\```
6. In windows terminal `ctrl + ,` & copy json over
7. In powershell   
`notepad $PROFILE` copy over and  
`. $PROFILE` 
