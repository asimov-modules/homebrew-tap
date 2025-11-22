class AsimovMlxModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-mlx-module"
  url "https://github.com/asimov-modules/asimov-mlx-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "a797b5bf115c6ffba180a9b15f4dc09564b08dc937f7c5574c56d36279cd0e55"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-mlx-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a4190e09c839c4753bf142320ed259acc335f221bdf33947923d3e9f89520026"
    sha256 cellar: :any_skip_relocation, sequoia:       "80534e43045607fb864d790c941e6e2d5ad4857840c946b1b4b33c2f286d858f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "768ce8a370b543e09950874bb60b1983abe6377da343e28cdc0433ba8b1c921d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
