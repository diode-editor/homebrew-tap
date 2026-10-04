# Сгенерировано packaging/render.mjs из релиза v0.6.1 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.6.1"
  sha256 arm:          "da015aa6f96722cd99c7afd7b818d3ae1e90a213b7435b9c71c1d12e12eede5b",
         intel:        "8f09838f85e3319d9eede00aee6d06290bb2bad7fe68870eefa84fe2c2fba668",
         arm64_linux:  "48021c38507fcad29610d26f769f9e908a0db2f88b4f4e7f504008fa872dce93",
         x86_64_linux: "e58e4f87834c30662c72892043589e1b681164f07c962012eef041a61e75518e"

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
