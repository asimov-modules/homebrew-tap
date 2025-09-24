class AsimovOllamaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ollama-module"
  url "https://github.com/asimov-modules/asimov-ollama-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "828b574298ca97b7f994abe3648f05482789f1ccc872723d367341be2d607577"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-ollama-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1c0417e431148f12a77c962518dc291694fdb8f4dcad66062fedce5eb1fde1b2"
    sha256 cellar: :any_skip_relocation, sequoia:       "e85c6005057fa4e8eefd294b19a951491f13a68ae2a8e29c8056bc9c087a4057"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "26646095c07c7b51a0db6a3610b1953bacc0b0cd1b52be269b5f85fe28f2a87c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
