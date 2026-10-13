# Сгенерировано packaging/render.mjs из релиза v0.8.0 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.0"
  sha256 arm:          "c37e6e2c2a23d317a286cd8d0a8140601af9aebbc36e7c6ee4552452d6d5fe00",
         intel:        "eca5ffec32702e0af1295beff46995a6cecc75a4d80f21f560aaf1a6f86ccfe6",
         arm64_linux:  "52b38e3e38751ee571126a53f094608c07248d4e6b2fba8eb7326b03b517e0eb",
         x86_64_linux: "4578394807930164477b9aa71dd864e9a3813e86f1b74581f14688a62d3857b9"

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
