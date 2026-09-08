cask "mornstorage" do
  version "0.1.5"
  sha256 "ccbebf541fb0fc5686e50c89c2cce9fa3bf9a615d4e9bf642c41c92d37f521c7"

  url "https://github.com/TsukumiStudio/MornStorage/releases/download/v#{version}/MornStorage.app.zip"
  name "MornStorage"
  desc "ディスク使用量をツリーマップで可視化するMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornStorage"

  depends_on macos: :sonoma
  app "MornStorage.app"
end
