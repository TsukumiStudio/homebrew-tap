cask "mornstorage" do
  version "0.1.4"
  sha256 "beaf9afa39ccafd445cb07a0aee10d7f1ddf048442955b256b045fa1abe9558d"

  url "https://github.com/TsukumiStudio/MornStorage/releases/download/v#{version}/MornStorage.app.zip"
  name "MornStorage"
  desc "ディスク使用量をツリーマップで可視化するMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornStorage"

  depends_on macos: :sonoma
  app "MornStorage.app"
end
