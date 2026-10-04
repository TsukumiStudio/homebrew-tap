cask "session-calendar" do
  version "0.4.0"
  sha256 "5a78dcd816cf21bcb5cdc18a6e144c64ade47400756c827c80d9d06c7d03f055"

  url "https://github.com/matsufriends/session-calendar/releases/download/v#{version}/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Local calendar of Claude Code and Codex sessions"
  homepage "https://github.com/matsufriends/session-calendar"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
