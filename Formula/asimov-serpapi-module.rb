class AsimovSerpapiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-serpapi-module"
  url "https://github.com/asimov-modules/asimov-serpapi-module/archive/refs/tags/0.1.3.tar.gz"
  sha256 "0db66a62715cb718f7cdc1cf09148b8aafa1ba122b0854934b3bd0b5b5bd621b"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-serpapi-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ae22922b1f530e4e03e21630321c4743963c9a969bce6ee6c83edc7acc339a94"
    sha256 cellar: :any_skip_relocation, ventura:       "d1af1e3a8aebeaa7b0d508236a2a988340d673759d7b21bc7176bea0bb4d735a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a00430ddb7f0dc90df46adef3a7454aa7966779ef5e1160c8a745ca0fc7967b9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
