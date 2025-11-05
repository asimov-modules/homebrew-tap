class AsimovValkeyModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-valkey-module"
  url "https://github.com/asimov-modules/asimov-valkey-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "24f3e6730efbed91300ff0d3e08f76c9c7b757605bf0107f2c06aec9e7c082bb"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-valkey-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "48cda92d457bcb6a5e98dc25761c583e1bb2c623108366d44823e7bbc3c2c8bb"
    sha256 cellar: :any_skip_relocation, sequoia:       "31f5d2f3533c2568a723147bf2ab517b8989b0771561cfef228c10ba7b33c105"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4c315c7a6620bf68d1370473b57f71d13b2029f1bafb9e5d20044ba05c6da126"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
