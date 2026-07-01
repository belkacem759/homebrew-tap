cask "claude-deck" do
  version "1.0.0"
  sha256 "f40b816dd3bdf8b3e27a37f8ad38010444a3395ce0144ddc760d5597251dbac1"

  url "https://github.com/belkacem759/claude-deck/releases/download/v#{version}/ClaudeDeck-#{version}.zip"
  name "ClaudeDeck"
  desc "Menu bar overview of running Claude Code sessions"
  homepage "https://github.com/belkacem759/claude-deck"

  app "ClaudeDeck.app"

  caveats <<~EOS
    ClaudeDeck is not notarized. If macOS blocks it, either install with
      brew install --cask claude-deck --no-quarantine
    or clear the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/ClaudeDeck.app
  EOS
end
