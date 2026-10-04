cask "session-calendar" do
  version "0.4.1"
  sha256 "3328d1d1a8a87180659aab5eb490fc15a2b414d8aa0d1ad28ef212441200e3c1"

  url "https://github.com/matsufriends/session-calendar/releases/download/v#{version}/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Local calendar of Claude Code and Codex sessions"
  homepage "https://github.com/matsufriends/session-calendar"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
