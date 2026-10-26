cask "mornslackworkreminder" do
  version "1.0.5"
  sha256 "37405e2f434766f3bc1418c8c9c5f8f1daea83697d920e219de19ae38b7cf4a4"

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
