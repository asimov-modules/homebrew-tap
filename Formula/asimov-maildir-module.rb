class AsimovMaildirModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-maildir-module"
  url "https://github.com/asimov-modules/asimov-maildir-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "ed182e0ae801f81d40a73d0ea902322c77f06ae01505e9599d6fca7097d8a37f"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-maildir-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "66724b5059552afa839ade757f1c4d61c1659a6a91d0a50603ecbc6dc6a291cc"
    sha256 cellar: :any_skip_relocation, ventura:       "0369132645034afd1b923b568be16c50c83512eb3ce65fc5e931bdf1ad5729e1"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c28988f3ef806aa119261a98bf67219c40e533260bfc9f7774753fbd44684e16"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
