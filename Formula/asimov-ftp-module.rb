class AsimovFtpModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ftp-module"
  url "https://github.com/asimov-modules/asimov-ftp-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "b77d8d5b2ad208bf568acacde72bb7cdfe781596fd516387a3f985515a633b88"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-ftp-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bc1487ba6ad6b0ca863763f43334be6af1a1e19a8f24e3754e3cdadcae085013"
    sha256 cellar: :any_skip_relocation, ventura:       "963dfe02cabffd123c2d7ae620158c77c792f4b702c1af35ee281b70c18dc23c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d95a7fd1eff311fecd4cc5fb4cb1d25f05642de88f5c560e125c0e2e0be0d4e7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
