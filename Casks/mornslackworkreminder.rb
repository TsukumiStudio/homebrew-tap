cask "mornslackworkreminder" do
  version "1.0.7"
  sha256 "b3bcdaa4e4fc44361e9cc8132f7904a120c9a1e7b43e61061ea425260653d6d5"

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
