cask "morndeck" do
  version "0.1.10"
  sha256 "b431e3393ef9815a3434c622d3c699e39936483ef148bc082d8480730c76eab4"

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
