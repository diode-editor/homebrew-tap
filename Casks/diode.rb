# Сгенерировано packaging/render.mjs из релиза v0.8.9 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.9"
  sha256 arm:          "a2a45976b685b89114007423a4959b43a2d5775cb121923770dc5d038e3d48f6",
         intel:        "3ae02035a07f4a59c70a8102001c94788c16a44864eddd2ffd4202b6286586bd",
         arm64_linux:  "d891a70c0596d532e5bdfab1d6fbe639ceb9dd18fbb143f17f5f17dabc4218f3",
         x86_64_linux: "c9f41273f1f12c8169aa4744ff38c71b94a72ea8893b8391bcbd29ae5df8accf"

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
