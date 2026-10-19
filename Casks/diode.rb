# Сгенерировано packaging/render.mjs из релиза v0.9.3 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.3"
  sha256 arm:          "002336cb805d7575461c15405b971d1856c7cd90215bb8e37f746c7908424ebd",
         intel:        "bc4be46db79eeddc2b116dfb06f87fa1f9ba626bf0e1aeaac4ec4860efcc17ea",
         arm64_linux:  "8f5b0e83a81ffd0018d8468bafd75c093640efb3d16aa21bd37bae3404800af2",
         x86_64_linux: "3e833c71db1270c8e30e57434bd6070bb7c9a93339c486de8e5844734a997732"

  url "https://github.com/diode-editor/diode/releases/download/v#{version}/diode-#{os}-#{arch}"
  name "Diode"
  desc "Terminal text editor with VS Code keys, VS Code extensions and LSP"
  homepage "https://diode-editor.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Ассет — голый бинарь без архива; в stage он лежит под именем из URL.
  container type: :naked

  binary "diode-#{os}-#{arch}", target: "diode"
end
