cask "mornaimeter" do
  version "0.4.1"
  sha256 "267cb59bc1d64985fd3427c09e70ed654a9ad5b265d44ad62a8003bfacd5f92b"

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
