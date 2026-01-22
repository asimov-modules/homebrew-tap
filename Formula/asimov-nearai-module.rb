class AsimovNearaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-nearai-module"
  url "https://github.com/asimov-modules/asimov-nearai-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "c15d2ed2607e4322d485365f9d5044323c57833b16c9530a6a5f419194991224"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-nearai-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e3c0e4c3c7d1787f9264bf31898a5f553411639ef489dd9f21af301729eca596"
    sha256 cellar: :any_skip_relocation, sequoia:       "a468b50c02f46fd43707b56e971cd4e0260d637e5b80076e97d339e76ab3fe7d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "eaa4f32f2b6cd79d34176698ce825f3b14b5cd0c07869b2a95cb710c099251cd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
