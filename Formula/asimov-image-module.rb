class AsimovImageModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-image-module"
  url "https://github.com/asimov-modules/asimov-image-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "2be6166b08c22fcec77cc62511592a947624be1dba1ef831899e32ba7e1792a5"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-image-module.git", branch: "master"

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
