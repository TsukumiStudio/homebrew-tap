cask "session-calendar" do
  version "0.2.4"
  sha256 "129d7765947d0a690dcdaa879c7cafda4cbb3f55ef6fc36d75f9ff1f965d18e0"

  url "https://github.com/matsufriends/session-calendar-releases/releases/download/v0.2.4/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Menu bar calendar and private metadata sync for Claude Code and Codex"
  homepage "https://github.com/matsufriends/session-calendar-releases"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
