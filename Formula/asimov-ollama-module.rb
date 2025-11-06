class AsimovOllamaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ollama-module"
  url "https://github.com/asimov-modules/asimov-ollama-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "dbc1e3a3107c6829e95e5fad1d651b5add23f9de8c27d5f798bd1d61d9c6b38c"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-ollama-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "904d0aa738538e2363b68acc61a8f1874ecb5c891d00c7a7c30598ca497d4e7b"
    sha256 cellar: :any_skip_relocation, sequoia:       "444fcfc945c4887ef89888b6dd6b7bd8fde8608c4244afd1a37ceec0ec7d1f86"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "2c153454af149690a719762bc59b9952d46964ea18e2141e0415404c60b0533d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
