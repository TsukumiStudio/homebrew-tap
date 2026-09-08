cask "mornstorage" do
  version "0.1.6"
  sha256 "e953338210fe91aafc4ba0517a549460f0b3aa93d4da902c2bf3379860bfccc2"

  url "https://github.com/TsukumiStudio/MornStorage/releases/download/v#{version}/MornStorage.app.zip"
  name "MornStorage"
  desc "ディスク使用量をツリーマップで可視化するMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornStorage"

  depends_on macos: :sonoma
  app "MornStorage.app"
end
