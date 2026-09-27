cask "mornrunner" do
  version "0.2.1"
  sha256 "7a7c31d4bd0f7cbbca0e4bf27e062afeb200d636aa4c1a474cc8a6995ebbf2db"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
