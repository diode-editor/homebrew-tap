# Сгенерировано packaging/render.mjs из релиза v0.8.5 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.5"
  sha256 arm:          "a813e0ab4d551086a08de67a0a6b6d9411cea84f564ade29243cf94bebcd7662",
         intel:        "56e8fa67a00c608b3d4b9e1877444e493c30c277513b822d055eb66d64425750",
         arm64_linux:  "a2ff61c3baf913a6c35ca2d7b73480692ed4d2c2e1ce86984124866b5118d47a",
         x86_64_linux: "4b6535041215d411ae6b8e1915040c6ccb039c7eae99e05c67a9828a0a9e18dd"

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
