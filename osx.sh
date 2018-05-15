# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Repeat delay
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# faster key repeat
defaults write NSGlobalDomain KeyRepeat -int 1

# Disable Slow Keys.
defaults write com.apple.universalaccess slowKey -int 0

# Disable Press-And-Hold for keys (eg: accents)
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# No shadow in screens
defaults write com.apple.screencapture disable-shadow -bool true

defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true

# My hot corners – tl:appwindowd tr:desktop br:allwindows
defaults write com.apple.Dock wvous-tr-corner -int 4;
defaults write com.apple.Dock wvous-br-corner -int 2;
defaults write com.apple.Dock wvous-tl-corner -int 3;

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Disable smart subs for code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
