class Emoji < Formula
  desc "Interactive emoji picker with clipboard integration"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "b2d473abfa7c34b73a581427571777a32c35dd997e7d26aee9821b650b590aad"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/emoji"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/emoji --help 2>&1")
  end
end
