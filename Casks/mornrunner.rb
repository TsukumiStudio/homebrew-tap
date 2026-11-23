cask "mornrunner" do
  version "0.4.4"
  sha256 "dcd358faf10e7a85f1823b110015245056933767087fb5c4c82d234905e855c4"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
