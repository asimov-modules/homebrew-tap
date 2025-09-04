class AsimovNearModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-near-module"
  url "https://github.com/asimov-modules/asimov-near-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "a53cb4d9acf3c515ebf8c20c2ef42edb742a7ee9c547e56ce2844ee9930b7531"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-near-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "def01d8482dad21631679fe9dd8fe71dee50a6bcfbaadf185253913234c59147"
    sha256 cellar: :any_skip_relocation, ventura:       "10ed07035b445557c283d9a8b1d57da68681353b2ff7c0088f1b307bb50c2c7d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ddf8e4f6f40d5d5f4756f5dd65c36881e52c0174646915843d2c62cd51641f11"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
