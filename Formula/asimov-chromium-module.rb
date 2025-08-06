class AsimovChromiumModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-chromium-module"
  url "https://github.com/asimov-modules/asimov-chromium-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "0e1d13b34c594f0566eab8ad81d6294b7ce388b0e30a9d6873266cf4da23ed22"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-chromium-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "55e744bc58b99453268b27654742ee04d386bc15a59063dcf729452e42f15503"
    sha256 cellar: :any_skip_relocation, ventura:       "ef136de84fd2396a5ed2779754696794c512cce46981e36f3d44b9bf21a8ebdd"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5ea514ffa90f15cc696b11273b0081d77adf464c8ac79b4645cd6b7e42ebb167"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
