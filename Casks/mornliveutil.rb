cask "mornliveutil" do
  version "0.2.0"
  sha256 "ba339ebf46fdfb82cab6738839246c28c31d78be083c0836fbf9df3eb96c0df6"

  url "https://github.com/TsukumiStudio/MornLiveUtil/releases/download/v#{version}/MornLiveUtil.app.zip"
  name "MornLiveUtil"
  desc "YouTube配信のコメントをVOICEVOXで読み上げるMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornLiveUtil"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "MornLiveUtil.app"
end
