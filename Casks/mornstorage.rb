cask "mornstorage" do
  version "0.1.1"
  sha256 "d51e8eab1a263d76098ea7fef6a914a9f4f2525f57cdb4e5db5a389edcc59ef2"

  url "https://github.com/TsukumiStudio/MornStorage/releases/download/v#{version}/MornStorage.app.zip"
  name "MornStorage"
  desc "ディスク使用量をツリーマップで可視化するMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornStorage"

  depends_on macos: :sonoma
  app "MornStorage.app"
end
