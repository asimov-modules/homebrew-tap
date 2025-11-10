class AsimovImageModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-image-module"
  url "https://github.com/asimov-modules/asimov-image-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "bb43d67e3703f14d8da59c3ce693599acf97654444eb3b8a059cefecdf049deb"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-image-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "de8c4f0a48582873f15023bc0513e22fec769652160d1ba0f8a0ce3342c56d4f"
    sha256 cellar: :any_skip_relocation, sequoia:       "1d34eb5129ed62fce9021df1b0ad3fa3768f45404c7f8e61c1a2496d9a6405f7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "b296e669a2d460b956f1c8b095be0f2ea0846f96eb01473992ff2cf452a211c7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
