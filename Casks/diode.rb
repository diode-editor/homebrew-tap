# Сгенерировано packaging/render.mjs из релиза v0.8.4 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.8.4"
  sha256 arm:          "f017f7d91787e21a9c6b02951e6300da3ae04d811ec4aa5468a8faf5a4feb691",
         intel:        "827deeb7325bee41d654a091e01bcda591d12d6dfa4a978a9f122ea34c192f1e",
         arm64_linux:  "0b76e9d6dbdaf57957c18ce230c11d2057b489d5c2435678600457bbc93ac167",
         x86_64_linux: "2ba916d2d7fc3b50c41cfa039c360f890bb0875cf1189f99b6b621d63612898d"

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
