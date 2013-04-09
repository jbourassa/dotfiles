# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Repeat delay
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# faster key repeat
defaults write NSGlobalDomain KeyRepeat -int 0

# No shadow in screens
defaults write com.apple.screencapture disable-shadow -bool true

defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true