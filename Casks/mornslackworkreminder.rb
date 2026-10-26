cask "mornslackworkreminder" do
  version "1.0.2"
  sha256 "3f2d00fac2bd9c27ccc05047aff8373a611eb9a4a68889539b974acc55c84897"

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
