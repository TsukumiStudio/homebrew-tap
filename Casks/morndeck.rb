cask "morndeck" do
  version "0.1.22"
  sha256 "0f78e8116d142c06b20f8620587644bd9d874c0d2899335ed5897b317821bcae"

  url "https://github.com/TsukumiStudio/MornDeck/releases/download/v#{version}/MornDeck.app.zip"
  name "MornDeck"
  desc "Claude Code / Codex の状態をサイドバーに出すターミナル多重化ソフト"
  homepage "https://github.com/TsukumiStudio/MornDeck"

  # 端末から使う CLI なので .app は Caskroom に置いたまま、コマンドだけを PATH に出す
  binary "MornDeck.app/Contents/MacOS/mdeck"

  # 公証済みでも quarantine が残ると更新ごとに初回確認ダイアログで止まり、ssh 越しでは気づけない
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "MornDeck.app"],
        chdir:          ".",
        writable_paths: ["MornDeck.app"]
  end
end
