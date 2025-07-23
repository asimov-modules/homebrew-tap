class AsimovMaildirModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-maildir-module"
  url "https://github.com/asimov-modules/asimov-maildir-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "f8de6d8f4d4c052d25470a100552a1defc9d0f4179f76ac2f98696c2d62937bb"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-maildir-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "371c1a29c7c67abbf871e151370e3df9d5bbb1764870809f423edb6cdc5d365d"
    sha256 cellar: :any_skip_relocation, ventura:       "f9ba87fb8ea53c53a1f89d97fe1520b4ae1fcb5620d753b62f451b7af453e956"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f5027d98cd71ffd9202b1d2536f01a2780ec4e6802b3e01f38370654692440f5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
