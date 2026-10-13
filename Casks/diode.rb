# Сгенерировано packaging/render.mjs из релиза v0.8.1 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.1"
  sha256 arm:          "b75824bbe6f3b17af6e65ced8e913b8d6f953c52718618118176df197e34f020",
         intel:        "e220f18df62042a97fb152be6190f2687ea6c6203c922bf4e96ca70a99b34aeb",
         arm64_linux:  "c6ad417e94b9c90ca9cf7480e8d7cc729fb65e4c95ffe269fe77d495a3458457",
         x86_64_linux: "8b05c6724f9d3db3ac7f07a31ea276dd45a933b91e67db7a78455fe2e86e289f"

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
