class AsimovJinjaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-jinja-module"
  url "https://github.com/asimov-modules/asimov-jinja-module/archive/refs/tags/0.1.5.tar.gz"
  sha256 "62e2963cb67dae40ba30401bf221d69561ac31fcbd1f6b71a8d178e9a7227fcc"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-jinja-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3d5caa24d65921f03d0cf1a5aea221a8a9b41696955b0fba070021c296494a69"
    sha256 cellar: :any_skip_relocation, ventura:       "33927ef9ae6c90679f4d7420a88f014feac39b523040b115f337213a2d8e2f1d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "1414e3012dad553646997507679c388d0af4b76f62514d8cd0083536fd42bd02"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
