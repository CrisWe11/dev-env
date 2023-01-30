if not exist "E:\dev-env\alacritty" mkdir E:\dev-env\alacritty
if not exist "E:\dev-env\tmux" mkdir E:\dev-env\tmux

xcopy "\\wsl.localhost\Ubuntu\home\bass\.config\nvim" "E:\dev-env\nvim" /y /s /i
xcopy "\\wsl.localhost\Ubuntu\home\bass\.config\omf" "E:\dev-env\omf" /y /s /i
xcopy "\\wsl.localhost\Ubuntu\home\bass\.config\fish" "E:\dev-env\fish" /y /s /i
copy "C:\Users\Bass\AppData\Roaming\alacritty\alacritty.yml" "E:\dev-env\alacritty\alacritty.yml"
copy "\\wsl.localhost\Ubuntu\home\bass\.tmux.conf" "E:\dev-env\tmux\.tmux.conf"

pause