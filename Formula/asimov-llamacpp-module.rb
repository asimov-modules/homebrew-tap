class AsimovLlamacppModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-llamacpp-module"
  url "https://github.com/asimov-modules/asimov-llamacpp-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "41c1495d497ff6cd11d4914d394daaa1e153e979489d091c0950a3a2e3ff3c57"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-llamacpp-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "610c3adb242b7c2217a9e22fa0608a8082550e42c59498cd36f01bb5d5c517af"
    sha256 cellar: :any_skip_relocation, sequoia:       "7f54942a3b3f8893d2bbd37f57ab1c7f93088ee3b1d481d6345c7759fbd4ca9c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "63f19e5b0b2c14d41c25f45c240302c41f685b58048297acd7736ed9a0a3f46c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
