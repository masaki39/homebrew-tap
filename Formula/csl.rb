class Csl < Formula
  desc "Interactive Zotero CSL style selector with clipboard integration"
  homepage "https://github.com/masaki39/homebrew-csl"
  url "https://github.com/masaki39/homebrew-csl/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "cc69da3732239bf0813174064327e546ce4291896deae9538df11003ed2c5c53"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/csl"
  end

  test do
    assert_match "csl", shell_output("#{bin}/csl --help 2>&1 || true")
  end
end
