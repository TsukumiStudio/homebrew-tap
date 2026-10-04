cask "session-calendar" do
  version "0.4.5"
  sha256 "49280dd0d21c364a09b186fe5db87a4566f36da7b8e1596e2ac6cd981d82a2da"

  url "https://github.com/matsufriends/session-calendar/releases/download/v#{version}/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Local calendar of Claude Code and Codex sessions"
  homepage "https://github.com/matsufriends/session-calendar"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
