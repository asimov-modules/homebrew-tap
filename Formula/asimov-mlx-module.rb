class AsimovMlxModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-mlx-module"
  url "https://github.com/asimov-modules/asimov-mlx-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "db734c7225abad55f29229d45ea2a3ae6f3d33876f4495237bcd04952bcf572e"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-mlx-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "dadf19d7aa6d49bec12cb8955be1bb68919ba76a0afb935b0ff546da5cd32595"
    sha256 cellar: :any_skip_relocation, sequoia:       "a3822756678f75a4e5f674e32f2e797dd57526217c4424b45d6fd1afc96bac61"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "7d280cfab8fd361608539cb3936b446179bafc442ca3be8a57b087d0e0638ad3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
