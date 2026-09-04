cask "mornaimeter" do
  version "0.6.0"
  sha256 "3820576c691823dda3a498d68d79fff895e7eee7eb8963eb48cf7bd8781b3a15"

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
