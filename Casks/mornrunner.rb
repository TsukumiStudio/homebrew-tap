cask "mornrunner" do
  version "0.4.3"
  sha256 "22bde34874ccb3a5136cd45228178408c459a1cfdb0a1696dc335132f3f0de84"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
