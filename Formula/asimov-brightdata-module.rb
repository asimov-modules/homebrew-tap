class AsimovBrightdataModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-brightdata-module"
  url "https://github.com/asimov-modules/asimov-brightdata-module/archive/refs/tags/0.0.7.tar.gz"
  sha256 "73374696aa39bac79fb7b52c9970c847a5908d4ad3ed0cde43f7a14d62dbb341"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-brightdata-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8ffc2f30ae0ebb42f04662d4c462b68551f09794b97eab483571f0912d65d8a9"
    sha256 cellar: :any_skip_relocation, sequoia:       "4af3fc8974a42f4b15f959f51590e888bbc1ff4bd0e5bc9150566ea1c1dc7800"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c12f9886bbadad5660f1773fdb6d5d3a431e458433277d1c3a9417c203115703"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
