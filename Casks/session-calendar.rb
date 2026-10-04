cask "session-calendar" do
  version "0.4.3"
  sha256 "1421b2e955c981c0d44474dd399ef0b1b14b6b0ebcc0a2901d16f4165aab4d5b"

  url "https://github.com/matsufriends/session-calendar/releases/download/v#{version}/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Local calendar of Claude Code and Codex sessions"
  homepage "https://github.com/matsufriends/session-calendar"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
