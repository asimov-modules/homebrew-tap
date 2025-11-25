class AsimovImageModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-image-module"
  url "https://github.com/asimov-modules/asimov-image-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "149b6df8c01fdcb15724c95f640d26080f41771e200f0dfc8715c57e4b00566c"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-image-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "87f47619271da43fd47ed5267f0be5b27811f8e80c9efcff8f7b0590b9487e85"
    sha256 cellar: :any_skip_relocation, sequoia:       "ec5e75a513da1933bffc4c7a48110e49f164ff2220cd4f829ed9f8c1bb2d0240"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f2ad08c44496e51932f7dcbefb66a09aa3a5afcb1877c556031a4471a5b199d1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
