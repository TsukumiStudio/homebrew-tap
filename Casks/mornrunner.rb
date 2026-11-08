cask "mornrunner" do
  version "0.4.0"
  sha256 "4a25794e345a76a6e41a9bcb941745383de958df1435d898c14dd3d7de615072"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
