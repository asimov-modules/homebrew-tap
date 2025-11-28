class AsimovCameraModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-camera-module"
  url "https://github.com/asimov-modules/asimov-camera-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "422aacc0f0caec7c765ba8357b780a519927665a345d9462bb612092439b1d56"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-camera-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "468e0a870541da3043391f2cd64e86382e5fc25c91314bf49e4aa1a3d294d71e"
    sha256 cellar: :any_skip_relocation, sequoia:       "f3c9d44085c262179db99d177001824296c53c88e8bf4b2789667a0fadf5a7d9"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "41ab44a3ef333939a01a6783a134889e739e2a4e78d60386a43d13fa9cb03bfd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
