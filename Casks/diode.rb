# Сгенерировано packaging/render.mjs из релиза v0.6.0 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.6.0"
  sha256 arm:          "3d8ce281b65cf58d85109765a0612fa6dea2ed68d33dde38742563726d8716ac",
         intel:        "24b03f3d58a8a0024d49760c3cfc6e3191d5b7bb75b40eca7aaaa23b3442cab7",
         arm64_linux:  "f113b26e2f0f0ce70a6f6e28bb0e7d37a096b2164b0f8ba5fde2bf6ee17e6028",
         x86_64_linux: "7f5f36f1b09e20f959ee1be3c2a16e6f2899833243a20512b220305ffc291a72"

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
