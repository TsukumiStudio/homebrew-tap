cask "mornrunner" do
  version "0.3.1"
  sha256 "9d4436f5e16b81db1be9132375bccfe5eb5e51242252bd70394a1f0fc18ea728"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
