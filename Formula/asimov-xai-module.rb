class AsimovXaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-xai-module"
  url "https://github.com/asimov-modules/asimov-xai-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "2125c04b76680336cb1a0c343b53c7d64adbbbe45a0bb0d4cb9b59552ce32b62"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-xai-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e4735c68c1361adfe49e7f75fd8bc0e04f82642ecedfcbb5936bc8febbf71866"
    sha256 cellar: :any_skip_relocation, sequoia:       "3e0d6af7a36bed9df2feed024f67e40307e8f3c567333b39a33336aedc493222"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "75e7f408ae8ea6c317b2641c6c3cda6e64789185b4bcf93786ba6ed6f5dc3c94"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
