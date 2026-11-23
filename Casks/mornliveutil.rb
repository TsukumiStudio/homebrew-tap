cask "mornliveutil" do
  version "0.4.2"
  sha256 "78f9986208734aba486dd4b16a760989aa57085e8ff556091265269b3ed6608e"

  url "https://github.com/TsukumiStudio/MornLiveUtil/releases/download/v#{version}/MornLiveUtil.dmg"
  name "MornLiveUtil"
  desc "YouTube配信のコメントをVOICEVOXで読み上げるMacアプリ"
  homepage "https://github.com/TsukumiStudio/MornLiveUtil"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  app "MornLiveUtil.app"
end
