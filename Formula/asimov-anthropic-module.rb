class AsimovAnthropicModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-anthropic-module"
  url "https://github.com/asimov-modules/asimov-anthropic-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "66807a297ee9ab92702dd644ecb8dfad87ce9882e0f0d54c92671e268e45568d"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-anthropic-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6b8abb0858ce516aa641834549d0c5c5c93e7b38feb052e71065b6bc3709ad85"
    sha256 cellar: :any_skip_relocation, sequoia:       "63a64e42330b6538c98f694d3c4b6db3e337008caa26a4afc9ddd140157f63c8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "091a56d65adfb03d67ee091559ef395fb9b3d815339e16bcca96253c3a929f7b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
