cask "session-calendar" do
  version "0.2.1"
  sha256 "2bd6b0a77537edda2a037643b6190b773ac73d7c608ed7f0826c4249f53d2846"

  url "https://github.com/matsufriends/session-calendar-releases/releases/download/v0.2.1/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Menu bar calendar and private metadata sync for Claude Code and Codex"
  homepage "https://github.com/matsufriends/session-calendar-releases"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
