cask "mornrunner" do
  version "0.4.1"
  sha256 "d95042bc6c9de3abb6051953f0a3273437cc1b9b699a37ff4a3759461c22ea0a"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
