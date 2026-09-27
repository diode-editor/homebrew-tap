# Сгенерировано packaging/render.mjs из релиза v0.4.0 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.4.0"
  sha256 arm:          "7093131f48a6e8fc9f7a3be23c315076f3851282f6099a975a342e89742dd0f4",
         intel:        "23fd13f057aac46c956ce8cc330f7c7c4a21b552628f7b96af9ff72e9ee8b1f0",
         arm64_linux:  "b23f4e9742dbb38f13866fea55f49d2b1ee2b33a345c4ff0622223fc25817570",
         x86_64_linux: "0deaf27840a754188fd79fd6e8671d55eca2489fe760e1e6e06e0125e0853e9a"

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
