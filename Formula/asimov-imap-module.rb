class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.1.2.tar.gz"
  sha256 "3683f8b8951e884d794256bad1e4de56520f9b9dfca926137b843a18f32d4005"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2a251f02baf2b3d7f9a135478449e29b52c13224183c1de74092cf3fbbee96eb"
    sha256 cellar: :any_skip_relocation, ventura:       "730af2d37e54d33a73fb27ccb9e2e55358e16fbc7b4372ffece66ff0cfd5c6ab"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "83100924b17889d8f4024a84df1e37b3573dde125a8af30ad9887495747ced6e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
