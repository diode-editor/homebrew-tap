# Сгенерировано packaging/render.mjs из релиза v0.7.5 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.7.5"
  sha256 arm:          "f6fbfebcdad28553e674b293536c8863350d5a942507f8da0e0eb0eb35e6cdc1",
         intel:        "835821e252b9ec746d72b7b4e75414042b8ed9181af4f525d0c71985fd13bd3e",
         arm64_linux:  "178351c9c6821316cc4191d5bec206de67fe2f847ac79de721941adddb5b213b",
         x86_64_linux: "bf296237fdf3988afffe1e35f08ee5857caccfd9ad194a4a2f95086883112427"

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
