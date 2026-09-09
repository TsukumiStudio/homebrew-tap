cask "mornaimeter" do
  version "0.6.3"
  sha256 "4da7efcafe7bccbc6a81135a84ec730eba9cb7c2338c9cde8631be03ed673c27"

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
