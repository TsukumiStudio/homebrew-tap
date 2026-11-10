cask "mornliveutil" do
  version "0.4.1"
  sha256 "b7627e003d3ea57300874578d98349a1129baee81ada96fa9c395999a8aebd01"

  url "https://github.com/TsukumiStudio/MornLiveUtil/releases/download/v#{version}/MornLiveUtil.app.zip"
  name "MornLiveUtil"
  desc "YouTube配信のコメントをVOICEVOXで読み上げるMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornLiveUtil"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "MornLiveUtil.app"
end
