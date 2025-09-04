class AsimovSignalModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-signal-module"
  url "https://github.com/asimov-modules/asimov-signal-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "1887ab3dbaf4190d60bb6083c6bbb66f6cdc97cd2bc00c97973dce2391fa9bf6"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-signal-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any,                 arm64_sequoia: "570988e27adac0473fb71d2fdd68adf6e58fca75d519030bba920d029d5f9764"
    sha256 cellar: :any,                 ventura:       "2b1ec6020bd44606602a49955ebf8fdd839645c0ea812b9007c3586aee651f46"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "1d391be7c9b08139ebc4379b13bc7e8bf4930cc86934a66846df2de909cc3d49"
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
