cask "clippad" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "66c031a73c83af5ae8a372a43cfc41fdddbe9e7498f3a025c4978494c39b86e8",
         intel: "084d57fd575892833f6dc8f7ba12423eff784bf291871e240aaee4619e63ee44"

  url "https://github.com/Maheshoo7/clippad/releases/download/v#{version}/ClipPad_#{version}_#{arch}.dmg"
  name "ClipPad"
  desc "Clipboard history manager with a menu-bar cat"
  homepage "https://github.com/Maheshoo7/clippad"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClipPad.app"

  uninstall quit: "io.github.maheshoo7.clippad"

  zap trash: [
    "~/Library/Application Support/io.github.maheshoo7.clippad",
    "~/Library/Caches/io.github.maheshoo7.clippad",
    "~/Library/LaunchAgents/ClipPad.plist",
    "~/Library/WebKit/io.github.maheshoo7.clippad",
  ]

  caveats <<~EOS
    ClipPad is not notarised by Apple yet. The first time you open it, macOS
    will block it once. To allow it, open:
      System Settings → Privacy & Security → Open Anyway

    ClipPad lives in the menu bar. Press ⌘⇧V to open your clipboard history.
  EOS
end
