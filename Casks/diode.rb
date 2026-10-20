# Сгенерировано packaging/render.mjs из релиза v0.9.7 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.7"
  sha256 arm:          "09d14910134a8fb47948fe29865e2dffde0277f38eef74d961f56f1c77f65356",
         intel:        "3ba1cec79b5e92e347398d06d3956534a0b99b494118aa7743a30f8c2658927a",
         arm64_linux:  "53a937d035975de349668b8c9f7b54e470674fd8f31c7988745ca7a309cb0f77",
         x86_64_linux: "e54e56a8b0302282a01b8bf675d8a798ba2a532f585424394fdf5d79fbc5ef83"

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
