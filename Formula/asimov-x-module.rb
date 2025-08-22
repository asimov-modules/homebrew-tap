class AsimovXModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-x-module"
  url "https://github.com/asimov-modules/asimov-x-module/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e09073ff35b60e7df60d4be4e76dc299c83650d186c54cc0fb2217695716cc74"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-x-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6af20164dc080cb3d992e6438860e76f6b9997780289bd17dfc347cfbc43327d"
    sha256 cellar: :any_skip_relocation, ventura:       "da9c800a3a8a04d0584d72169bb7aa0b6b7978b64ffe0aa0fb746d6406c42663"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "fe4dcef2809336104cb775a3e70e4c44e6f3da7c9cecb92dad6dafe05b0daff2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
