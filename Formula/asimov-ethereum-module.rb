class AsimovEthereumModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ethereum-module"
  url "https://github.com/asimov-modules/asimov-ethereum-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "5a2e86a9a3311d0c2df8324dff30c793977ebbcc3bb8edc686eef09524615504"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-ethereum-module.git", branch: "master"

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
