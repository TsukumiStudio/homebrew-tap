cask "mornstorage" do
  version "0.1.2"
  sha256 "2d24ce21faa1eae39aaef67615f3d117cff7f2999e871c352e2f517b6a942594"

  url "https://github.com/TsukumiStudio/MornStorage/releases/download/v#{version}/MornStorage.app.zip"
  name "MornStorage"
  desc "ディスク使用量をツリーマップで可視化するMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornStorage"

  depends_on macos: :sonoma
  app "MornStorage.app"
end
