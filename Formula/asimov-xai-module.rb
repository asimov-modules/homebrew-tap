class AsimovXaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-xai-module"
  url "https://github.com/asimov-modules/asimov-xai-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "30294d4ad525eafff230c5f3e49b873746fa1e8c61f5f01b09b360c3ff0b3121"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-xai-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e1ebb0b0dab39c3975cb91e37d85550e5ecda945f9f4524f1a5b5f4e5ef51d23"
    sha256 cellar: :any_skip_relocation, sequoia:       "ba60daaf10a19783e1306f5c45efc9ed9750b3131cf4c814f1f3b9d39b7a280f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "288742ee1fddb8014606054b8478f2bc5cd983003a31375a161383e0d415517d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
