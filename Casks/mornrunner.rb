cask "mornrunner" do
  version "0.4.5"
  sha256 "b23e7c82440c2867acee936e6de8aa20a187be0815ce87a4aedce86511d1c6c0"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
