class AsimovXModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-x-module"
  url "https://github.com/asimov-modules/asimov-x-module/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "5deabcc9499a84627ad1cb3c5a81298763fc15a5f644bcd5a2d6b5787ae8e67b"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-x-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c324a1f98fbdc27058aa41ec492aab0538acc539429f3fdf3f82f2b3069cc7a8"
    sha256 cellar: :any_skip_relocation, ventura:       "35effe28fe6207f7e50311419c7fc4a82fad37e9ee8db208cdc02a500fe10c65"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "211a39e4aa0d062878f2417c465bbf509a1fa712967af9b5bfe85d8df15b0f8a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
