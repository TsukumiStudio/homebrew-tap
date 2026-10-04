cask "session-calendar" do
  version "0.4.4"
  sha256 "a641e39a68e324efde1f710c0615aac161993b4800d0e275809d3c7387efb01b"

  url "https://github.com/matsufriends/session-calendar/releases/download/v#{version}/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Local calendar of Claude Code and Codex sessions"
  homepage "https://github.com/matsufriends/session-calendar"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
