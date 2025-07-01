class AsimovChromiumModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-chromium-module"
  url "https://github.com/asimov-modules/asimov-chromium-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "066a0f81f03d3609e4d2aa65b6f7bfe01afeec8475c578b7ce3f3cf699de40b2"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-chromium-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8d5642edd9e376c2f8965dd96f8c229b293a5434f52d7cb0288f3368fb1fee91"
    sha256 cellar: :any_skip_relocation, ventura:       "73b4528541df286789ca829515f742496505be4cc2bcd601992416067cb4975d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d4f5c49b4631a5d7ced55b2d790b2ac9ebd41575d90273dab105c85be6f93075"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
