# Сгенерировано packaging/render.mjs из релиза v0.9.0 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.0"
  sha256 arm:          "cff6411da31fe5e9075524ba29565826bea8f9cf059bafa7a742cf8b4661ca94",
         intel:        "52713b4134787760fe8e6f5f3819a2fd956938e417fcb75cfa4d931a8f487ede",
         arm64_linux:  "246718212dfa59ec424ffc3097e20609379f604c3bed92d5bba60cfa70e3df66",
         x86_64_linux: "313f405b38785df56745dad67600aeabf96cc70e74826fbe951bc63fcf45cbaa"

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
