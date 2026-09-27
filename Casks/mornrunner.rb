cask "mornrunner" do
  version "0.2.0"
  sha256 "5a2be34b47df2c10414b9d5433390c87281fb17f26bd581904c07450e2e05f20"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
