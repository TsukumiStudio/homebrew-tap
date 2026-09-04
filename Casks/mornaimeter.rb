cask "mornaimeter" do
  version "0.6.2"
  sha256 "d0575b6fe3349f3339787ccd421f1052d32110888ce910314c7add182710c7b0"

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
