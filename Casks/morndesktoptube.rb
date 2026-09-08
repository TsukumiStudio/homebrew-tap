cask "morndesktoptube" do
  version "0.5.4"
  sha256 "ca84f5601d67f1e57c77312f957a16a1192ff0cd1f3ffe7b532cc68bfc80778a"

  url "https://github.com/TsukumiStudio/MornDesktopTube/releases/download/v#{version}/MornDesktopTube.app.zip"
  name "MornDesktopTube"
  desc "YouTubeをMacのデスクトップ背景で再生するメニューバー常駐アプリ"
  homepage "https://github.com/TsukumiStudio/MornDesktopTube"

  depends_on macos: :sonoma
  app "MornDesktopTube.app"
end
