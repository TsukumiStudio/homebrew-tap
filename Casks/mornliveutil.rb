cask "mornliveutil" do
  version "0.4.0"
  sha256 "03bf3f3a04efef9029a4a15ba4b5b8a5f3626c23bf55e8f4fd0d704b1f16ec1a"

  url "https://github.com/TsukumiStudio/MornLiveUtil/releases/download/v#{version}/MornLiveUtil.app.zip"
  name "MornLiveUtil"
  desc "YouTube配信のコメントをVOICEVOXで読み上げるMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornLiveUtil"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "MornLiveUtil.app"
end
