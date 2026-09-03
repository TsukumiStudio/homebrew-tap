cask "mornaimeter" do
  version "0.1.0"
  sha256 "3e4ac5eb5913568b25fb33d903d03d13a04f357734ce19408390306670493102"

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
    reinstall with: brew install --cask --no-quarantine matsufriends/tap/mornaimeter
    (or right-click the app in Finder and choose Open).
  EOS
end
