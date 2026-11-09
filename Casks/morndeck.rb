cask "morndeck" do
  version "0.1.5"
  sha256 "2ef88dc29b909c5db51e66dc2dbd2154296e0de0b112224df01b85a61a217211"

  url "https://github.com/TsukumiStudio/MornDeck/releases/download/v#{version}/MornDeck.app.zip"
  name "MornDeck"
  desc "Terminal multiplexer with a sidebar that tracks claude / codex state"
  homepage "https://github.com/TsukumiStudio/MornDeck"

  # 端末から使う CLI なので .app は Caskroom に置いたまま、コマンドだけを PATH に出す
  binary "MornDeck.app/Contents/MacOS/mdeck"

  # 公証済みでも quarantine が残ると更新ごとに初回確認ダイアログで止まり、ssh 越しでは気づけない
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/MornDeck.app"]
  end
end
