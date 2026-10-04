cask "morn-session-calendar" do
  version "0.5.0"
  sha256 "068d56b8217e21702095c1de62e5abb0ffc895542dfe1aa174eee753b53aaae3"

  url "https://github.com/matsufriends/MornSessionCalendar/releases/download/v#{version}/MornSessionCalendar.app.zip"
  name "MornSessionCalendar"
  desc "Local calendar of Claude Code and Codex sessions"
  homepage "https://github.com/matsufriends/MornSessionCalendar"

  depends_on macos: :sonoma

  app "MornSessionCalendar.app"
end
