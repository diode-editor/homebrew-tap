# Сгенерировано packaging/render.mjs из релиза v0.5.0 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.5.0"
  sha256 arm:          "b3271cf6aa065308cf2f821c152e1a44b215385d96c3ac6bb042184cb8fe425e",
         intel:        "666e5dd3916d56309cc4f7d83f0ac1043a80fddffc02567145427c7dacef7296",
         arm64_linux:  "d03f41cb88f3ae37f349f21aeb19ee46051050eed2ac78b443c15e0065b38b02",
         x86_64_linux: "e9dd0c2b934ad517df6249a4188ed1b9bc67df3c8ed609b5f631ce7f129d6bc8"

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
