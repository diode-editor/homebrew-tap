# Сгенерировано packaging/render.mjs из релиза v0.7.3 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.7.3"
  sha256 arm:          "8e0b0067cffd75f9a8543067763aa69edea071a675b905442309f065801de514",
         intel:        "c050fca88b87c5e4b25686e883e6ea239376a6025393f946774dffcf28b41815",
         arm64_linux:  "18fec03ec0d5ed6efbefbb2a094d967e0be9824e2a8b57c1c0a0d0fd1f8143e9",
         x86_64_linux: "c8a35f60b3040e6ffab63c3b3282b5a2b71fefb86989ff517f442f87f14e7dfc"

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
