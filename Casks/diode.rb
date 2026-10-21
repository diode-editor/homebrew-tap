# Сгенерировано packaging/render.mjs из релиза v0.9.8 — руками не править.
cask "diode" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "0.9.8"
  sha256 arm:          "fe1b3eb2897c88107791c9d876bc17f3200e8385a753e61523def6c17b7a7b9e",
         intel:        "bc7b2dfc9bb04c1dd0c5bd76bf1be9b899a4a09b20eedab1cf1bece970350fe6",
         arm64_linux:  "811d1a33462a2c3def0b3212cdda654f6e3859931b6edb2fd4a973dadb79a1b4",
         x86_64_linux: "dbe5d0ebff33c022bf9eb5eb1db5575b69139a7ccc5e43f3a20381a1f877e0b0"

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
