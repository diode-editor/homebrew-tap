# Сгенерировано packaging/render.mjs из релиза v0.7.0 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.7.0"
  sha256 arm:          "26a1cb9169d88a0256a79059ce1181199e39a9e0ee841ce01a86339c34fb0fe3",
         intel:        "33b9412be0851113f1b448870253088058af457d23b72096e8616bd998e16bf9",
         arm64_linux:  "4940520d849f196bf7d11e2d087c18b3006a498117e543544c31e9a95b4004f5",
         x86_64_linux: "d229574c6b1c4feeac16ff48a4b7c6b2adca482c69b962434ad84077c7a0cced"

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
