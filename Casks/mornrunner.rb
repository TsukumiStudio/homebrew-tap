cask "mornrunner" do
  version "0.4.2"
  sha256 "89438e7df39e1effa3700253f427d564e7c5c57ce21580de59fa102c4c027502"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
