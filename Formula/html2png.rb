class Html2png < Formula
  desc "Render a local HTML file to PNG with WebKit (helper for quicklook.yazi)"
  homepage "https://github.com/masaki39/quicklook.yazi"
  url "https://github.com/masaki39/quicklook.yazi/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "01863660e2abf2da45d7aed67bbb3719838ba5b04582647e437c16d719ff933f"
  license "MIT"
  depends_on :macos

  def install
    system "swiftc", "-O", "html2png/main.swift", "-o", "html2png/html2png"
    bin.install "html2png/html2png"
  end

  test do
    assert_match "usage", shell_output("#{bin}/html2png 2>&1", 2)
  end
end
