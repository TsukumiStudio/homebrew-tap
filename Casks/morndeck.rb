cask "morndeck" do
  version "0.1.40"
  sha256 "785f34a530f11afe77587349a484b3119abe727c6cf23da947bf8b52fa9d98de"

  url "https://github.com/TsukumiStudio/MornDeck/releases/download/v#{version}/MornDeck.app.zip"
  name "MornDeck"
  desc "Claude Code / Codex の状態をサイドバーに出すターミナル多重化ソフト"
  homepage "https://github.com/TsukumiStudio/MornDeck"

  # 端末から使う CLI なので .app は Caskroom に置いたまま、コマンドだけを PATH に出す
  binary "MornDeck.app/Contents/MacOS/mdeck"

  # 公証済みでも quarantine が残ると更新ごとに初回確認ダイアログで止まり、ssh 越しでは気づけない
  # パスは {{staged_path}} で絶対にする (相対パス + chdir の版は upgrade で失敗した。この形は CI で install→upgrade→uninstall を確認済み)
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{staged_path}}/MornDeck.app"],
        writable_paths: ["MornDeck.app"]
    # 更新直後の初回起動は macOS の検査で数分止まることがある。フックや MCP より先にここで済ませる
    run "{{staged_path}}/MornDeck.app/Contents/MacOS/mdeck", args: ["--version"]
  end
end
