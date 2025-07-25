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

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
