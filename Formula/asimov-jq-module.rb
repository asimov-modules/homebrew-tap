class AsimovJqModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-jq-module"
  url "https://github.com/asimov-modules/asimov-jq-module/archive/refs/tags/0.1.5.tar.gz"
  sha256 "23fb0c8118d1baebb88b2fec139920367b465959ee5764d7ca1874571e11a2cf"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-jq-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "05998f547ad969d63c1b8b74547f1aa1c36e58a3c1dd5ec8d9dd93933502da0f"
    sha256 cellar: :any_skip_relocation, ventura:       "d640a2cc6c4dc550919320dc12199a50727ef6ef65672a1aeaf62a135ea1600b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "513aee6da059f73ff0cb74a7f2f7da3927664ad75a6aeff7643a660579b97734"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
