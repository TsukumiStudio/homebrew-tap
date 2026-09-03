cask "mornaimeter" do
  version "0.2.0"
  sha256 "868d05a1577b4caf418bd84e067ef7b31beca18c72fdb226e6535675f6ee746f"

  url "https://github.com/matsufriends/MornAIMeter/releases/download/v#{version}/MornAIMeter.app.zip"
  name "MornAIMeter"
  desc "Menu bar pie charts for Claude Code / Codex CLI usage limits"
  homepage "https://github.com/matsufriends/MornAIMeter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "MornAIMeter.app"

  zap trash: [
    "~/Library/Application Support/MornAIMeter",
    "~/Library/Preferences/studio.tsukumi.mornaimeter.plist",
  ]

  caveats <<~EOS
    This app is ad-hoc signed and not notarized. If Gatekeeper blocks it,
    remove the quarantine attribute and open it again:
      xattr -d com.apple.quarantine /Applications/MornAIMeter.app
  EOS
end
