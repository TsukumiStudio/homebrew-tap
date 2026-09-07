cask "mornstorage" do
  version "0.1.0"
  sha256 "dc6b4c070ed94da0e693262429738f37111d8b888cd23934a92f22423dc5eecd"

  url "https://github.com/TsukumiStudio/MornStorage/releases/download/v#{version}/MornStorage.app.zip"
  name "MornStorage"
  desc "ディスク使用量をツリーマップで可視化するMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornStorage"

  depends_on macos: :sonoma
  app "MornStorage.app"
end
