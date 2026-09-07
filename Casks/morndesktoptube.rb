cask "morndesktoptube" do
  version "0.5.1"
  sha256 "dda1943c28591756363c9e16affcad3b8c4b8b6e94e03b596265fde3b36328da"

  url "https://github.com/TsukumiStudio/MornDesktopTube/releases/download/v#{version}/MornDesktopTube.app.zip"
  name "MornDesktopTube"
  desc "YouTubeをMacのデスクトップ背景で再生するメニューバー常駐アプリ"
  homepage "https://github.com/TsukumiStudio/MornDesktopTube"

  depends_on macos: :sonoma
  app "MornDesktopTube.app"
end
