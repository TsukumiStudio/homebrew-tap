cask "morndesktoptube" do
  version "0.5.5"
  sha256 "168d880f49b123169738de5fb4dd2a5a0cff5dd7869473187cac4f8c0eb74a07"

  url "https://github.com/TsukumiStudio/MornDesktopTube/releases/download/v#{version}/MornDesktopTube.app.zip"
  name "MornDesktopTube"
  desc "YouTubeをMacのデスクトップ背景で再生するメニューバー常駐アプリ"
  homepage "https://github.com/TsukumiStudio/MornDesktopTube"

  depends_on macos: :sonoma
  app "MornDesktopTube.app"
end
