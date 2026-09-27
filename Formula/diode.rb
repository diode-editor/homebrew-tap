# Сгенерировано packaging/render.mjs из релиза v0.3.0 — руками не править.
class Diode < Formula
  desc "Terminal text editor with VS Code keys, VS Code extensions and LSP"
  homepage "https://diode-editor.github.io"
  version "0.3.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/diode-editor/diode/releases/download/v0.3.0/diode-macos-arm64"
      sha256 "8a61696414c11786002cec7893cf36ad6376d38178f3466597c027e141a34650"
    end
    on_intel do
      url "https://github.com/diode-editor/diode/releases/download/v0.3.0/diode-macos-x64"
      sha256 "27cb9ee615ec3f86482275c8449bfbf42adcb1783b5ea095ff8485a9e9380f06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diode-editor/diode/releases/download/v0.3.0/diode-linux-arm64"
      sha256 "7ce6a7eb5bff56c881e0d59ead382bf610685d9cbf06b7b28cf30c994418a5ec"
    end
    on_intel do
      url "https://github.com/diode-editor/diode/releases/download/v0.3.0/diode-linux-x64"
      sha256 "c381fbc34bba74a587a2790f154470d49ccc86af9df2ec3621164f2bbdd2cad6"
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
