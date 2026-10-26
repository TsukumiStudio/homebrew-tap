cask "mornslackworkreminder" do
  version "1.0.1"
  sha256 "7b2d1b419f72ffca7a7c2b6f27933180bb57e3dfe4ec1be007b89cb48f18c278"

  url "https://github.com/TsukumiStudio/MornSlackWorkReminder/releases/download/v#{version}/MornSlackWorkReminder.app.zip"
  name "MornSlackWorkReminder"
  desc "Menu bar app that nags you when you open personal Slack channels during work hours"
  homepage "https://github.com/TsukumiStudio/MornSlackWorkReminder"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  app "MornSlackWorkReminder.app"

  zap trash: [
    "~/Library/Preferences/com.tsukumistudio.MornSlackWorkReminder.plist",
    "~/Library/Logs/MornSlackWorkReminder.log",
  ]
end
