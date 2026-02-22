class Typewriter < Formula
  desc "Typewriter effect CLI - type text char by char or display fortune messages"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "65dd315b488a05a0a342e059da1fb1e00f8dbfc55bdcb61bc95aa69f0fa730bf"

  depends_on "fortune"

  def install
    bin.install "bin/typewriter"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/typewriter --help 2>&1")
  end
end
