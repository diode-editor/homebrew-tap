# Сгенерировано packaging/render.mjs из релиза v0.4.0 — руками не править.
class Diode < Formula
  desc "Terminal text editor with VS Code keys, VS Code extensions and LSP"
  homepage "https://diode-editor.github.io"
  version "0.4.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/diode-editor/diode/releases/download/v0.4.0/diode-macos-arm64"
      sha256 "7093131f48a6e8fc9f7a3be23c315076f3851282f6099a975a342e89742dd0f4"
    end
    on_intel do
      url "https://github.com/diode-editor/diode/releases/download/v0.4.0/diode-macos-x64"
      sha256 "23fd13f057aac46c956ce8cc330f7c7c4a21b552628f7b96af9ff72e9ee8b1f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diode-editor/diode/releases/download/v0.4.0/diode-linux-arm64"
      sha256 "b23f4e9742dbb38f13866fea55f49d2b1ee2b33a345c4ff0622223fc25817570"
    end
    on_intel do
      url "https://github.com/diode-editor/diode/releases/download/v0.4.0/diode-linux-x64"
      sha256 "0deaf27840a754188fd79fd6e8671d55eca2489fe760e1e6e06e0125e0853e9a"
    end
  end

  def install
    # url — голый файл без архива: Homebrew кладёт его в stage под именем ассета.
    binary = Dir["diode-*"].first
    bin.install binary => "diode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/diode --version")
  end
end
