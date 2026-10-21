# Сгенерировано packaging/render.mjs из релиза v0.9.9 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.9"
  sha256 arm:          "24d81c4e21a73d192355a563913a917598d1eba9fae58770fecd0429ba332a62",
         intel:        "dc2abf53b9013ae184490432afff82457ad9a0fe862fbf24038c3f0d21e80cda",
         arm64_linux:  "7dbc6ed4429e309a7fdd84c47b5b12bb4d4a3dcaa10a190cc7234a96e3afff06",
         x86_64_linux: "097b1ac4f5a2215d268cf7e5c52a936e17f651729fdca9d6967dd1886866f1b4"

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
