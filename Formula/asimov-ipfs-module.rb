class AsimovIpfsModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ipfs-module"
  url "https://github.com/asimov-modules/asimov-ipfs-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "e555b6bc534fd7f994ce95532c6b250cafb95db17c8f1ab4169065cdeab63c2e"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-ipfs-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8ed0618c05d6584b81038f6af382ed0f32854f5cc1e26c75b137c6b6a8f83a68"
    sha256 cellar: :any_skip_relocation, ventura:       "908739ba5cecc63d67bd5d41c10f9bbeeaac486cbd9034a8b8c057b5eb1a0a2b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a13320bfc4690f45b67b5778a946aac612ccfe2396e16bdc23e63812bf65d722"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
