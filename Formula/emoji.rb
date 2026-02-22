class Emoji < Formula
  desc "Interactive emoji picker with clipboard integration"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/emoji-v1.1.2.tar.gz"
  sha256 "a9ba41e07a5c50cf02a25c518072ebd1c4d9be48ed3801ea0ce6b980d8327390"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/emoji"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/emoji --help 2>&1")
  end
end
