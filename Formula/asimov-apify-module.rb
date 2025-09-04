class AsimovApifyModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-apify-module"
  url "https://github.com/asimov-modules/asimov-apify-module/archive/refs/tags/0.1.3.tar.gz"
  sha256 "6380d738f5fa797b9797be6b8f4c5d90105bee9b4003219d91f1d4e44d357e2e"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-apify-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2beb8ac6b8b07ffdeeae5603184ce7653fea01c4c643a1b9fad6ea1beee03085"
    sha256 cellar: :any_skip_relocation, ventura:       "1ce5b906fe3b6964809ce0b1c23f011f91e9109b6debb5f33f0c6ca536fb8179"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "467a116be9cb1c9914a83a16533eee4c41d0beb2879ed9ea5fa6bf352cafc148"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
