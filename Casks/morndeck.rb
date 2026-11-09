cask "morndeck" do
  version "0.1.14"
  sha256 "3978ea2d745e868a2247a8243c983e671ca32e5cb36320639ab470edb71f5efa"

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
