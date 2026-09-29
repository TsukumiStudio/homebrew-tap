cask "mornrunner" do
  version "0.3.0"
  sha256 "fbd12cd6ecd31ad0ec135c42d13702541d02225803e1338b846312b75bbfec6f"

  url "https://github.com/TsukumiStudio/MornRunner/releases/download/v#{version}/MornRunner.app.zip"
  name "MornRunner"
  desc "Set up and monitor GitHub Actions self-hosted runners from the menu bar"
  homepage "https://github.com/TsukumiStudio/MornRunner"

  depends_on macos: :sonoma
  app "MornRunner.app"
end
