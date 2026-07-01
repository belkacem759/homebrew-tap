cask "claude-deck" do
  version "2.0.0"
  sha256 "5c110010f33fe8175730d40b0516349a7a5ee6c60f436401c47a7a28c3396e9a"

  url "https://github.com/belkacem759/claude-deck/releases/download/v#{version}/ClaudeDeck-#{version}.zip"
  name "ClaudeDeck"
  desc "Menu bar overview of running Claude Code sessions"
  homepage "https://github.com/belkacem759/claude-deck"

  app "ClaudeDeck.app"

  caveats <<~EOS
    ClaudeDeck is not notarized. If macOS blocks the first launch,
    clear the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/ClaudeDeck.app
  EOS
end
