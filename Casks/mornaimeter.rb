cask "mornaimeter" do
  version "0.5.0"
  sha256 "8129a727b7df3b6f5215959f356583bfab3df4c3f73b8f9b7d1702a500ceb7f5"

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
end
