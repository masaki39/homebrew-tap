class Emoji < Formula
  desc "Interactive emoji picker with clipboard integration"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "placeholder"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/emoji"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/emoji --help 2>&1")
  end
end
