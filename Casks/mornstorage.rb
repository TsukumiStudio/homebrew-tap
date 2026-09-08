cask "mornstorage" do
  version "0.1.3"
  sha256 "e5b6d2fdf464945ace7eb38208c5d8b7655071a10bfd89df49ed60da08c96d62"

  url "https://github.com/TsukumiStudio/MornStorage/releases/download/v#{version}/MornStorage.app.zip"
  name "MornStorage"
  desc "ディスク使用量をツリーマップで可視化するMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornStorage"

  depends_on macos: :sonoma
  app "MornStorage.app"
end
