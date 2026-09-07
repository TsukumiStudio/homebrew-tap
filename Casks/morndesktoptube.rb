cask "morndesktoptube" do
  version "0.5.3"
  sha256 "a949fe89d831cc30cf26bb2ee44790ab3fcb56c0e20c1d69a0c5d14a030df3da"

  url "https://github.com/TsukumiStudio/MornDesktopTube/releases/download/v#{version}/MornDesktopTube.app.zip"
  name "MornDesktopTube"
  desc "YouTubeをMacのデスクトップ背景で再生するメニューバー常駐アプリ"
  homepage "https://github.com/TsukumiStudio/MornDesktopTube"

  depends_on macos: :sonoma
  app "MornDesktopTube.app"
end
