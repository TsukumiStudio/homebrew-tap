cask "mornrunner" do
  version "0.2.2"
  sha256 "2c8adaa5cc6f39868f7b3a5c9a1434397f7ed1148d1dd309eb88e7827fa516fc"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
