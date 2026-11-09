cask "morndeck" do
  version "0.1.1"
  sha256 "ecb0f09f85f7e948e43721b23b43df0230818e276344ffd1a68a9e9df082309d"

  url "https://github.com/TsukumiStudio/MornDeck/releases/download/v#{version}/MornDeck.app.zip"
  name "MornDeck"
  desc "Terminal multiplexer with a sidebar that tracks claude / codex state"
  homepage "https://github.com/TsukumiStudio/MornDeck"

  # 端末から使う CLI なので .app は Caskroom に置いたまま、コマンドだけを PATH に出す
  binary "MornDeck.app/Contents/MacOS/mdeck"
end
