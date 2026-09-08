cask "mornstorage" do
  version "0.1.8"
  sha256 "211fb622c2a81f0e129867bf4f64ff943ac0827aa876ddb004164bfb59c1d154"

  url "https://github.com/TsukumiStudio/MornStorage/releases/download/v#{version}/MornStorage.app.zip"
  name "MornStorage"
  desc "ディスク使用量をツリーマップで可視化するMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornStorage"

  depends_on macos: :sonoma
  app "MornStorage.app"
end
