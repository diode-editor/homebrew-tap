# Сгенерировано packaging/render.mjs из релиза v0.8.6 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.6"
  sha256 arm:          "958ae236ca8957c74d3b82ca595b236c15ba7eed01b06c4cf3bc3391c42b5261",
         intel:        "602d61ce260fc21791960cf15b48f32431dbc839874a1185701d8ff29f4baa85",
         arm64_linux:  "4d91861a27e319e6deeff68e7ca924da97a5cf7098316b491f4125b36d302d16",
         x86_64_linux: "42971acef82f738cee99140098aca7e58ef1ff7502a8ac03a3fe7670ca5af20e"

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
