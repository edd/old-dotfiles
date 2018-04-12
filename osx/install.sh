#!/bin/bash
defaults write com.apple.mail PreferPlainText -bool TRUE

defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write -g WebKitDeveloperExtras -bool true

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

defaults write com.apple.dock autohide -bool true

sudo pmset -a sms 0

defaults write com.apple.finder AppleShowAllFiles true

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
