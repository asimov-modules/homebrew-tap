class AsimovLlamacppModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-llamacpp-module"
  url "https://github.com/asimov-modules/asimov-llamacpp-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "c546e606e79aaeba94c4b0d517c48537031b44da17b92cbcb8e03f5049feec52"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-llamacpp-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "99317b4b8c64dc24e4f190f889a98f3feb393be243976b88b209261c71775436"
    sha256 cellar: :any_skip_relocation, sequoia:       "f7762d3692dc44ed3c635293c61c79faf7c901a953a026796d51be334d5737c7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "37a8a4dd007eea5982c27de9812aa17d606501e32d0487ef4fd19c20c7b9e801"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
