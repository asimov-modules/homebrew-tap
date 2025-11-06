class AsimovHttpModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-http-module"
  url "https://github.com/asimov-modules/asimov-http-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "7d7b024fa5bd92577d1d46b8521d8a909e524b39dd0e48f14d87ffb257884ec3"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-http-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b6e89b45c3818283d1aeff2dc3b786557bff633078382624ab32262a5fab3841"
    sha256 cellar: :any_skip_relocation, sequoia:       "63d13b389c55f5911ea6520f408e66603fcb90b112efdc0edff79e622dfd6dc5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "1a17765aab45d218cd0663a4cf66adaa71dca2db24c601c2c1c37603e30d3514"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
