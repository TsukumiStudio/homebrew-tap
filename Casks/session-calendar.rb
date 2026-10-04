cask "session-calendar" do
  version "0.3.0"
  sha256 "f86fb38e8eacd8258f6f57bee7fc61e7b27a501e3dd9362b0c62df74ee6cfb67"

  url "https://github.com/matsufriends/session-calendar/releases/download/v#{version}/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Menu bar calendar and private metadata sync for Claude Code and Codex"
  homepage "https://github.com/matsufriends/session-calendar"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
