cask "session-calendar" do
  version "0.2.2"
  sha256 "4820e4d29fb66a2e101f7f3274d7b051d19ff5cbd612599b4b284c4cda377350"

  url "https://github.com/matsufriends/session-calendar-releases/releases/download/v0.2.2/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Menu bar calendar and private metadata sync for Claude Code and Codex"
  homepage "https://github.com/matsufriends/session-calendar-releases"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
