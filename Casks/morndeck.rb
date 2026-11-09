cask "morndeck" do
  version "0.1.32"
  sha256 "72fcb16d11c7ad02ceec6bb717ced89c072c959ab7ade14e479de3faca69410f"

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
