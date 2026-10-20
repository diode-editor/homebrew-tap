# Сгенерировано packaging/render.mjs из релиза v0.9.6 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.6"
  sha256 arm:          "0e454b9f385e8bda2f5f9d432fdd21d412a82222704d09f6eaebb30ca20f56b0",
         intel:        "5a0474c24aeeb1f2b5bc9c8f7f11e00c17a23f02699b2feb7b078e9a61ce3835",
         arm64_linux:  "eb9fb08275f74227e753fdc13288aa4fa7fdb8c681c43fa06ae88a6c77f38fd5",
         x86_64_linux: "279dda8add578d924b1799cc4a07af1d9630a059e580d36acd68b9691e110c71"

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
