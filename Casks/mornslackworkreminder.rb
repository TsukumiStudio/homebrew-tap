cask "mornslackworkreminder" do
  version "1.0.4"
  sha256 "573f916daf24a1a0952f6c01bfa137d17c34ac551014b1f8b3faeb595e747fe4"

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
