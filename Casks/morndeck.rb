cask "morndeck" do
  version "0.1.33"
  sha256 "2df2a083796f22ad356b87d154e776d35d1fe2ff2bb8c6cdc1cf468d582d1308"

  url "https://github.com/TsukumiStudio/MornDeck/releases/download/v#{version}/MornDeck.app.zip"
  name "MornDeck"
  desc "Claude Code / Codex の状態をサイドバーに出すターミナル多重化ソフト"
  homepage "https://github.com/TsukumiStudio/MornDeck"

  # 端末から使う CLI なので .app は Caskroom に置いたまま、コマンドだけを PATH に出す
  binary "MornDeck.app/Contents/MacOS/mdeck"

  # 公証済みでも quarantine が残ると更新ごとに初回確認ダイアログで止まり、ssh 越しでは気づけない
  # postflight_steps の run は upgrade で MornDeck.app を見つけられず失敗し、ロールバックも壊れる
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/MornDeck.app"]
    # 更新直後の初回起動は macOS の検査で数分止まることがある。フックや MCP より先にここで済ませる
    system_command "#{staged_path}/MornDeck.app/Contents/MacOS/mdeck", args: ["--version"]
  end
end
