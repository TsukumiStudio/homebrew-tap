cask "mornaimeter" do
  version "0.6.5"
  sha256 "57a2c51afcd4d141629f133bf99a51f12dc4b3a3c657771be283e1520e709d74"

  url "https://github.com/TsukumiStudio/MornAIMeter/releases/download/v#{version}/MornAIMeter.app.zip"
  name "MornAIMeter"
  desc "Menu bar pie charts for Claude Code / Codex CLI usage limits"
  homepage "https://github.com/TsukumiStudio/MornAIMeter"

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
