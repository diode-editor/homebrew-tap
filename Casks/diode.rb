# Сгенерировано packaging/render.mjs из релиза v0.9.1 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.1"
  sha256 arm:          "7dcd5211ce2414fb2546590b8f0dc47bd57ed29b88c6d1c59fa674d599406672",
         intel:        "e468a3145daa010351a9bbe8636a5cd49d749b257dc89184430a2b80067355e4",
         arm64_linux:  "6c131658a43258acb897ec451fed3fffb65296a481d64dc6c2342fc442a65705",
         x86_64_linux: "b8d2dcd6264f20c63d6c5e4c1486add2ef14063c913ed2c1c99dea58d254b426"

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
