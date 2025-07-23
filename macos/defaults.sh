sudo -v
# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Repeat delay
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# faster key repeat
defaults write NSGlobalDomain KeyRepeat -int 2

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Slow Keys. -- this fails and I don't really understand what it does?
# defaults write com.apple.universalaccess slowKey -int 0

# Disable Press-And-Hold for keys (eg: accents)
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Disable Force click with trackpad (I always hit it by accident)
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -bool true

# Ctrl-scroll for zooming
sudo defaults write com.apple.universalaccess closeViewScrollWheelToggle 1

# No shadow in screens
defaults write com.apple.screencapture disable-shadow -bool true

sudo defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true

# My hot corners – tl:appwindowd tr:desktop br:allwindows
defaults write com.apple.dock wvous-br-corner -int 2
defaults write com.apple.dock wvous-br-modifier -int 0
defaults write com.apple.dock wvous-tl-corner -int 3
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0

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

defaults write -g NSWindowShouldDragOnGesture -bool true

# Swiping doesn't back/forward in browser
defaults write .GlobalPreferences AppleEnableSwipeNavigateWithScrolls 0
