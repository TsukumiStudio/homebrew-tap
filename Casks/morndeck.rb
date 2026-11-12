cask "morndeck" do
  version "0.4.4"
  sha256 "90ec1677c035bd0b340e3fc1ce23af61d426080c6b39ae1b7be19715628a934b"

  url "https://github.com/TsukumiStudio/MornDeck/releases/download/v#{version}/MornDeck.app.zip"
  name "MornDeck"
  desc "Terminal multiplexer with a sidebar that tracks AI coding agents"
  homepage "https://github.com/TsukumiStudio/MornDeck"

  depends_on :macos

  # 端末から使う CLI なので .app は Caskroom に置いたまま、コマンドだけを PATH に出す
  binary "MornDeck.app/Contents/MacOS/mdeck"

  # 公証済みでも quarantine が残ると更新ごとに初回確認ダイアログで止まり、ssh 越しでは気づけない
  # パスは {{staged_path}} で絶対にする (相対パス + chdir の版は upgrade で失敗した)
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{staged_path}}/MornDeck.app"],
        writable_paths: ["MornDeck.app"]
    # 更新直後の初回起動は macOS の検査で数分止まることがある。フックや MCP より先にここで済ませる
    run "{{staged_path}}/MornDeck.app/Contents/MacOS/mdeck", args: ["--version"]
  end

  # サーバーは upgrade をまたいで動かし続けるので、ここでは止めない (止めるのは mdeck uninstall)
  zap trash: "~/.mdeck"

  caveats <<~EOS
    Before uninstalling, run `mdeck uninstall` to remove the agent hooks and stop the server.
  EOS
end
