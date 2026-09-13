class AirdropCli < Formula
  desc "macOS CLI for AirDrop"
  homepage "https://github.com/masaki39/airdrop-cli"
  url "https://github.com/masaki39/airdrop-cli/archive/refs/tags/1.0.3.tar.gz"
  sha256 "a5fde41dd095493b033621b9c6f92dd2566e3bef52b6412f71c813ac0e513274"
  license "MIT"
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
