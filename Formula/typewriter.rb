class Typewriter < Formula
  desc "Typewriter effect CLI - type text char by char or display fortune messages"
  homepage "https://github.com/masaki39/homebrew-tools"
  url "https://github.com/masaki39/homebrew-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "716ffba7228db3ffbb11014e16d8adb2335ff6aa1888e420097e6acd7bb390c9"

  depends_on "fortune"

  def install
    bin.install "bin/typewriter"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/typewriter --help 2>&1")
  end
end
