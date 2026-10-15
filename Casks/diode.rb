# Сгенерировано packaging/render.mjs из релиза v0.8.8 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.8"
  sha256 arm:          "7eb9da1d13c9024dd37bca94c05c16bdbab2ca4e273016c4cad4ee9b98138ff1",
         intel:        "047c927b8e876c7f08ad02fb4e4147d3c6baba91c0875b6ac0f140357a1a2af9",
         arm64_linux:  "4b61d3918e2cc138f2e00d20ca8cf5ffc9fb6c75581f0b8cc9d20fc905b8c9f2",
         x86_64_linux: "7773f1bcc44709c18dff260c58a81eb8e6dc5ce65fccdc140864b06fd5c2f96a"

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
