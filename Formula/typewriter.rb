class Typewriter < Formula
  desc "Typewriter effect CLI - type text char by char or display fortune messages"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "b2d473abfa7c34b73a581427571777a32c35dd997e7d26aee9821b650b590aad"

  depends_on "fortune"

  def install
    bin.install "bin/typewriter"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/typewriter --help 2>&1")
  end
end
