class Typewriter < Formula
  desc "Typewriter effect CLI - type text char by char or display fortune messages"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "3d44b7600510f1df1822b0682ac16797651b7b56c5c2ea8913c70bec367b5340"

  depends_on "fortune"

  def install
    bin.install "bin/typewriter"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/typewriter --help 2>&1")
  end
end
