cask "session-calendar" do
  version "0.4.2"
  sha256 "ed070312e0c6ec229c7b96450148164e54d36f8d0150274697ff330d1e5e8e1d"

  url "https://github.com/matsufriends/session-calendar/releases/download/v#{version}/SessionCalendar.app.zip"
  name "Session Calendar"
  desc "Local calendar of Claude Code and Codex sessions"
  homepage "https://github.com/matsufriends/session-calendar"

  depends_on macos: :sonoma

  app "SessionCalendar.app"
end
