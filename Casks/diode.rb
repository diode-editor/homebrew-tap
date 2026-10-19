# Сгенерировано packaging/render.mjs из релиза v0.9.2 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.2"
  sha256 arm:          "db9b790df8ffc4da9ee0f6dd806e4fed442f8575a109f602719feddf46653184",
         intel:        "719e66dafc6a72442f18c2316dcae1bf0938515b88ae0729b861a423e0f18155",
         arm64_linux:  "583bd3c65d32309b1657fc220059f0a8d276bb6ba5a36f6c9bb60b5740b00406",
         x86_64_linux: "52886b8de9673257b11bb78ffd9bc1c18022d6499a9ec0316b10f40cce860d06"

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
