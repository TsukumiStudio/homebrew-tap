cask "mornaimeter" do
  version "0.6.4"
  sha256 "30d2bd87248268e2a12d28968680224b364543d85903a4c5bc3e61a110fcae06"

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
