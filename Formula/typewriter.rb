class Typewriter < Formula
  desc "Typewriter effect CLI - type text char by char or display fortune messages"
  homepage "https://github.com/masaki39/homebrew-typewriter"
  url "https://github.com/masaki39/homebrew-typewriter/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c6ba819707d3c746122f81dc021eba2079a486c71d8374944b5becfdb6c6ceab"

  depends_on "fortune"

  def install
    bin.install "bin/typewriter"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/typewriter --help 2>&1")
  end
end
