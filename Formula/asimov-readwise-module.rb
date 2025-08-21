class AsimovReadwiseModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-readwise-module"
  url "https://github.com/asimov-modules/asimov-readwise-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "e6d032538b6b71cd681301ab66c28a798a4436fbae9909eac40566edc2197587"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-readwise-module.git", branch: "master"

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
