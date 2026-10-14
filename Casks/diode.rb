# Сгенерировано packaging/render.mjs из релиза v0.8.3 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.3"
  sha256 arm:          "27e76ce245d4cb1869620012fdf38e91a1141afb346e8eef5b17ed31adc23e39",
         intel:        "e2d1840a68424e17f29fd2867a03ba20e21dca40e5aeebcf4240d4882b85a634",
         arm64_linux:  "8fab8b0124d07e2a507a15c36019be6a8352b756b85fd0e573a5b06a226b1252",
         x86_64_linux: "215d7a0c8839ed0faf25f0d5d417abb6d58783761b00b604d6e7a57b17727680"

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
