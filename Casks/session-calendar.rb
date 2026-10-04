cask "session-calendar" do
  version "0.2.3"
  sha256 "858bc750d37d869a2cd6772f3cab93ff4092a3933d9f32366ef7c9f0875b4ba9"

  url "https://github.com/matsufriends/session-calendar-releases/releases/download/v0.2.3/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Menu bar calendar and private metadata sync for Claude Code and Codex"
  homepage "https://github.com/matsufriends/session-calendar-releases"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
