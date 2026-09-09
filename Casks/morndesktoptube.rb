cask "morndesktoptube" do
  version "0.5.6"
  sha256 "9889e30d2c3e3839df23c74ad2be667da30b81da6aa334d785ad47fa8183e779"

  url "https://github.com/TsukumiStudio/MornDesktopTube/releases/download/v#{version}/MornDesktopTube.app.zip"
  name "MornDesktopTube"
  desc "YouTubeをMacのデスクトップ背景で再生するメニューバー常駐アプリ"
  homepage "https://github.com/TsukumiStudio/MornDesktopTube"

  depends_on macos: :sonoma
  app "MornDesktopTube.app"
end
