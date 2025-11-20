class AsimovImageModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-image-module"
  url "https://github.com/asimov-modules/asimov-image-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "2be6166b08c22fcec77cc62511592a947624be1dba1ef831899e32ba7e1792a5"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-image-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f784c5349fdb6b6bf124ad796a7836070ff239a1d419fd39f4e5f209a71ecbfa"
    sha256 cellar: :any_skip_relocation, sequoia:       "063c87f413ae78afcf4d2f6f6cdb6329e8ae95e0235476ad42b1ca90f26adc48"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5b923673c95106341c2063f129d3e4f3243fae13b06e529b3de09ccd0588abe7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
