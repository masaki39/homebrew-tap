class AirdropCli < Formula
  desc "macOS CLI for AirDrop"
  homepage "https://github.com/masaki39/airdrop-cli"
  url "https://github.com/masaki39/airdrop-cli/archive/1.0.2.tar.gz"
  sha256 "ed08aa3d210dfbb6febd791ada0f5e61a774e6c4c061b951437d6af9815590fe"
  license "MIT"
  version "1.0.2"
  depends_on xcode: "11.4"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    mv ".build/release/airdrop", "airdrop"
    bin.install "airdrop"
  end

  test do
    system "#{bin}/airdrop", "-h"
  end
end
