cask "mornstorage" do
  version "0.1.7"
  sha256 "d1b719cfcdb867558ad570ba74d8c4acee10c0bd424eb23e3150dc7b046d8d0e"

  url "https://github.com/TsukumiStudio/MornStorage/releases/download/v#{version}/MornStorage.app.zip"
  name "MornStorage"
  desc "ディスク使用量をツリーマップで可視化するMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornStorage"

  depends_on macos: :sonoma
  app "MornStorage.app"
end
