cask "morndesktoptube" do
  version "0.5.2"
  sha256 "a8cfc795fc6ce7a89c593eb983558611befebf77834cc8b921c8c49411f195f3"

  url "https://github.com/TsukumiStudio/MornDesktopTube/releases/download/v#{version}/MornDesktopTube.app.zip"
  name "MornDesktopTube"
  desc "YouTubeをMacのデスクトップ背景で再生するメニューバー常駐アプリ"
  homepage "https://github.com/TsukumiStudio/MornDesktopTube"

  depends_on macos: :sonoma
  app "MornDesktopTube.app"
end
