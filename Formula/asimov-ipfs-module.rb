class AsimovIpfsModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ipfs-module"
  url "https://github.com/asimov-modules/asimov-ipfs-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "e555b6bc534fd7f994ce95532c6b250cafb95db17c8f1ab4169065cdeab63c2e"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-ipfs-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
