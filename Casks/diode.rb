# Сгенерировано packaging/render.mjs из релиза v0.8.7 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.7"
  sha256 arm:          "3d4fdc4c62ec0d0ecfbf692a0b8290aa6fcc5370874eab435b4227b0c00babd7",
         intel:        "4dc69b0cdf472599e3da7a9014b8561686331e06feb9aba3baaa9555f65161be",
         arm64_linux:  "11274127e2a0aa0d1dced682c268ce074d1e1fd6cc5506024ca24ae86c907e38",
         x86_64_linux: "29fccfbacf509c81a56ea6625317d0f0ded3e220d0edcdeb4e670f07e1a803d3"

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
