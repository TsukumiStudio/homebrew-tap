cask "zoom-mute-monitor" do
  version "1.1.0"
  sha256 "a5a19501b785d499d0d6cc30dca96094150e823dc1a1a54f1cc4bf0da6e0666a"

  url "https://github.com/TsukumiStudio/MornZoomMuteMonitor/releases/download/v#{version}/ZoomMuteMonitor.app.zip"
  name "ZoomMuteMonitor"
  desc "Always-on-top Zoom microphone mute status indicator"
  homepage "https://github.com/TsukumiStudio/MornZoomMuteMonitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  app "ZoomMuteMonitor.app"

  zap trash: [
    "~/Library/Application Support/ZoomMuteMonitor",
    "~/Library/Preferences/com.zoommutemonitor.app.plist",
  ]
end
