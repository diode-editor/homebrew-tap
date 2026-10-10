# Сгенерировано packaging/render.mjs из релиза v0.7.1 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.7.1"
  sha256 arm:          "148133ce83747ae537c27c59e1b9d7e2d8b3138d20363d50fd42adf9747c8531",
         intel:        "84bf96f8fa430f639f39db219f19581d7285cb612144446c460335b4e91fabc3",
         arm64_linux:  "e872b5ab5c4a99c96ff7e2feb8f52a7bbda6f623d30837c56c526f11310d0f3f",
         x86_64_linux: "962310940b2a4e9ef63eddb4e838376afe37f462758befeb6ad8a64195c6ff22"

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
