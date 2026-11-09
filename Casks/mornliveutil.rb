cask "mornliveutil" do
  version "0.1.0"
  sha256 "a9ea1216e9d74e4e1d1c66b811f236f3b44fcd075639d3f2203a92c1690c81e9"

  url "https://github.com/TsukumiStudio/MornLiveUtil/releases/download/v#{version}/MornLiveUtil.app.zip"
  name "MornLiveUtil"
  desc "YouTube配信のコメントをVOICEVOXで読み上げるMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornLiveUtil"

  depends_on macos: :sonoma
  app "MornLiveUtil.app"
end
