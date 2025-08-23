class AsimovXModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-x-module"
  url "https://github.com/asimov-modules/asimov-x-module/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "5655d7e2db5c2ab2e2a8faa4e7378c05ce69b3905c6a031c7d42009eddcf125f"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-x-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bc71b7373eec1199638ac25ec5633fba2fe5a127e656e87bbee9642b866a2bcd"
    sha256 cellar: :any_skip_relocation, ventura:       "f63380f1a5111096af0d0a58819228123193fce3093f84c7e4bb2abc9fa0c3e0"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e7a3af8c29062fb71c2b642f09992d4a01c18a323bd1e55864d2a865c1c3ff6d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
