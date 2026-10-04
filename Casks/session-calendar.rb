cask "session-calendar" do
  version "0.4.6"
  sha256 "2cafa35a7afb60bade302d3e995ec0e11ddd1c525353c3ac370dcaa4ebedf64f"

  url "https://github.com/matsufriends/session-calendar/releases/download/v#{version}/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Local calendar of Claude Code and Codex sessions"
  homepage "https://github.com/matsufriends/session-calendar"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
