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

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
