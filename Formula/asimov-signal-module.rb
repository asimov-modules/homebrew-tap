class AsimovSignalModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-signal-module"
  url "https://github.com/asimov-modules/asimov-signal-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "35a266fe76095e65d427c939b20ebfd3610784c886e0efe8d956c7b92b664e72"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-signal-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any,                 arm64_sequoia: "86d9e211ad39d11d9550f4c316a545b3bb0784c26bfc47926794e43a6989aacb"
    sha256 cellar: :any,                 ventura:       "97fa8b120a343155626b9265a450d6ce889f593c141d1edb29fe452ee98dc4fc"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "cb0675a882f8bb8515dfbb480de2f88211711229562605c614fb36bcb59cf0cc"
  end

  depends_on "openssl" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
