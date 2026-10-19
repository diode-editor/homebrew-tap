# Сгенерировано packaging/render.mjs из релиза v0.9.4 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.4"
  sha256 arm:          "94ef888fba609f02258ef73bc85fe7c9cb28cab725b10332f707c0e44464847f",
         intel:        "9f1a3a3ce2508843174e29c42246a2b52d10f9a5ea52e61cc4e4591bb94c8466",
         arm64_linux:  "e97b6a209e144ce11bcd4211cb441709741147fbd07604b55a698a30994f4c3d",
         x86_64_linux: "775e929af166b2dc415f7810ff2162b60bc385f56073a66ea08cee54c3b23376"

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
