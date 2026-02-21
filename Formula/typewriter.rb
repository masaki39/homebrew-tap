class Typewriter < Formula
  desc "Typewriter effect CLI - type text char by char or display fortune messages"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "18a0331e7a70b7366ae4af6976afa5a20e5d55a4ed11a8248d0e27aaa3dccaa1"

  depends_on "fortune"

  def install
    bin.install "bin/typewriter"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/typewriter --help 2>&1")
  end
end
