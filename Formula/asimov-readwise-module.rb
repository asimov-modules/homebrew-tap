class AsimovReadwiseModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-readwise-module"
  url "https://github.com/asimov-modules/asimov-readwise-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "e6d032538b6b71cd681301ab66c28a798a4436fbae9909eac40566edc2197587"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-readwise-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9460686bdff4766793653356e95d68520fff98cc27a5f20b5615116513bfcb5a"
    sha256 cellar: :any_skip_relocation, ventura:       "f5dc4d964371ce7e8b96ea49b714b149145e061aa1c95abf01db7c3cde155822"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e9997a74f53eed23936baa2671a235d62c673c83995308e677639b21b1b7b6dc"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
