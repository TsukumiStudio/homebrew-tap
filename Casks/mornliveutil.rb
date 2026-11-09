cask "mornliveutil" do
  version "0.3.0"
  sha256 "8b4bba77dec4727d10ff44532e65ade6f879594cc7de106c15f8e9bba98f92fc"

  url "https://github.com/TsukumiStudio/MornLiveUtil/releases/download/v#{version}/MornLiveUtil.app.zip"
  name "MornLiveUtil"
  desc "YouTube配信のコメントをVOICEVOXで読み上げるMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornLiveUtil"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "MornLiveUtil.app"
end
