class AsimovXaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-xai-module"
  url "https://github.com/asimov-modules/asimov-xai-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "2d813abd15eab1bf6e683d0813057a0c7c3cbf8b43164b1cac2291b22c980d2f"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-xai-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "75d496d74d186226375b5ffac84735a25bb0d43b5c3436e83e0e394985f0c35e"
    sha256 cellar: :any_skip_relocation, sequoia:       "cf058c8b38b071e8e2dc3a62b0a4e9d3e83db76926e87cccfb60968864e57f5d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "035162fce1ce1bcea3d20fd2e88c6ea3d0ae5db304f38bf91884d60bd07cf8ff"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
