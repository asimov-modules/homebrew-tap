class AsimovXModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-x-module"
  url "https://github.com/asimov-modules/asimov-x-module/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "7cc2b111c0a45f27bbaf406b69368151a56c4ca411525d27b388f1a3e729e876"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-x-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "83987ce231c3e261034a66a00f214f5bad6c7f37e381278b73b55349cd194dfb"
    sha256 cellar: :any_skip_relocation, ventura:       "d80bfd3c72c36257d886bde622832c8f029d2a053e3f8ba0f80cf18621a2f7b7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a36f5c7011559a8c633ef6173673e4e27638de7b964eff1f8686bef9bf25f659"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
