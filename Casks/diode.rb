# Сгенерировано packaging/render.mjs из релиза v0.9.5 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.5"
  sha256 arm:          "92a54beb7ca287257daac628f2a9d1ffa505c31607f1cd1ccbf67d722b50c279",
         intel:        "a735cea99d396ade135121c60b14f90d9fc0f85656f4fa6602c8213030aae592",
         arm64_linux:  "7540a3b848d7519646a614f2c3604914ace7f5029af2ac79a8ab7250af733e93",
         x86_64_linux: "30f4d6820bc51012df6a3d6d3a6d3a5b3261839bc2e46fbb006f650568c11daf"

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
