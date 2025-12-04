class AsimovAppleModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-apple-module"
  url "https://github.com/asimov-modules/asimov-apple-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "e1b08a33191897b78d4fe4ee4ddc11ddbcb7ac00d9f6fa81a2892394d8cf00fd"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-apple-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c57804833ab5413b614d0f44e450e547d639a6732591fa3bcc73f881be306cc3"
    sha256 cellar: :any_skip_relocation, sequoia:       "de399daa6b6a648c3f47f4d409bc2a02c9cc5a294761ad84a30cbff078dab569"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
