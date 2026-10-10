# Сгенерировано packaging/render.mjs из релиза v0.7.2 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.7.2"
  sha256 arm:          "6849452b0f5354effbe9c1db2b0045011da29df10a4a05ab62c70fc19929a353",
         intel:        "3eb3b73bb946a5947586de50b34c28477cec4a7ac7b7c25ae1ae69483f520bf6",
         arm64_linux:  "e3550158872f06222c85c01e99be3d39fceef0d6996c5cb99cebcb11b25e4dec",
         x86_64_linux: "6ad374e975de98ed6586752a8dbf7a0b0116efa6cf54307a19fc593696e9a344"

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
