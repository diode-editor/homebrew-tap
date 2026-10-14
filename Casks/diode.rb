# Сгенерировано packaging/render.mjs из релиза v0.8.2 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.2"
  sha256 arm:          "8ee917435d3e75e6ee4c4077f76df0e1bb99a403de464e71ff735a67e6662de9",
         intel:        "3b060e3713ea48e232258739fc50144f78fb9a16055fe1d1cef827b48fdf3f8d",
         arm64_linux:  "c61631401133db626366807b7e9132961f33665dc4dc62052e03698bf9a5c5f8",
         x86_64_linux: "59cbfcdeda81375c9d5fbc5ccbe7468af7f9b298fb6dbc75af31280488e254b1"

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
