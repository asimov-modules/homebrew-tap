class AsimovReadwiseModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-readwise-module"
  url "https://github.com/asimov-modules/asimov-readwise-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "0595b001ba737fcc06e3e47661fba616e0b529460dd5783eec8a2f98d5b6031d"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-readwise-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d3a949fa14c7a2cfbf4f855f66b498391494651630c57055ee8d6712ecbb4ec8"
    sha256 cellar: :any_skip_relocation, sequoia:       "87740a65f746592c2e02e1892247a8361af440b295aa36cc1ec3460cf1779f4c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "bdc684d05d6f8dfe95bb931b15833471bc311bfdf6a25d0d7116451708b77971"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
