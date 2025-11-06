class AsimovNearModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-near-module"
  url "https://github.com/asimov-modules/asimov-near-module/archive/refs/tags/0.0.4.tar.gz"
  sha256 "ec160f7f5f47c6eb434379dc4cb44e7a60eb5775557cb75eda79899e81f547f6"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-near-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d64906086a5b099780964ad75f6fb758dd571f590f9c39ce23bca8c79ed41cd3"
    sha256 cellar: :any_skip_relocation, sequoia:       "2ae4e3aac3965d830ca5b54e87d88af1d709ace07feeaaed93ba5ea084b5a0b7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "b2a71069ae248f9a67acfc84a7e9fdc46947a8b4b41a75e7a062a1fa8fdee6a6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
