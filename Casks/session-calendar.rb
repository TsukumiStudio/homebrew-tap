cask "session-calendar" do
  version "0.3.1"
  sha256 "6d8671b0d6351c112a280ce4516d08906e82e6067c2be8e503afa9fff020ba5a"

  url "https://github.com/matsufriends/session-calendar/releases/download/v#{version}/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Menu bar calendar and private metadata sync for Claude Code and Codex"
  homepage "https://github.com/matsufriends/session-calendar"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
