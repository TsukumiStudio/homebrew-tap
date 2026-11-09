cask "morndeck" do
  version "0.1.0"
  sha256 "d5becaa3f229ff576716922c744a7696bbc39e074a15b0438cda3e3fc1478625"

  url "https://github.com/TsukumiStudio/MornDeck/releases/download/v#{version}/MornDeck.app.zip"
  name "MornDeck"
  desc "Terminal multiplexer with a sidebar that tracks claude / codex state"
  homepage "https://github.com/TsukumiStudio/MornDeck"

  # 端末から使う CLI なので .app は Caskroom に置いたまま、コマンドだけを PATH に出す
  binary "MornDeck.app/Contents/MacOS/mdeck"
end
