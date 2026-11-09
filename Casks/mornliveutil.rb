cask "mornliveutil" do
  version "0.1.1"
  sha256 "698591c181317be46488fd851aef82306cd3fb0905e14be76f4114973bebda1f"

  url "https://github.com/TsukumiStudio/MornLiveUtil/releases/download/v#{version}/MornLiveUtil.app.zip"
  name "MornLiveUtil"
  desc "YouTube配信のコメントをVOICEVOXで読み上げるMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornLiveUtil"

  depends_on macos: :sonoma
  app "MornLiveUtil.app"
end
