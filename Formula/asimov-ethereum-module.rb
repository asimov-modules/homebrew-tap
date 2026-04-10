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

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "07ded353bf8190c4b5561b49364660fe00221dc58d1fdfdddc1a4dad4b7a9241"
    sha256 cellar: :any_skip_relocation, sequoia:       "1ea1ba23021d955a6b9aad380d623c5cb1c110823c586bf472653281b8ddd849"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "3c3585d39a9579b7dc6947476d63a9dc5cfea41d67066453f97b6db017be7203"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
