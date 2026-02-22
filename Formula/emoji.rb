class Emoji < Formula
  desc "Interactive emoji picker with clipboard integration"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "65dd315b488a05a0a342e059da1fb1e00f8dbfc55bdcb61bc95aa69f0fa730bf"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/emoji"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/emoji --help 2>&1")
  end
end
