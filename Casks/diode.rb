# Сгенерировано packaging/render.mjs из релиза v0.7.4 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.7.4"
  sha256 arm:          "202bd0b3e99dd66b59fe8b224cbc2199dcd37747fd0d2a83d6bf26151b7d417c",
         intel:        "29a52100649e119c6935b855d78cc72e307b3f72ea586770b44ef5c15fcc89aa",
         arm64_linux:  "75845b7ec3619572d38f1a9006c8fd1ef1a94364f80dc85725d81f585a0b76b2",
         x86_64_linux: "f693fef56cbace433079ec5c95c0896b68d1e1e7ce4fc16f0a0f574cc0d2609d"

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
