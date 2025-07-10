class AsimovMaildirModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-maildir-module"
  url "https://github.com/asimov-modules/asimov-maildir-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "ed182e0ae801f81d40a73d0ea902322c77f06ae01505e9599d6fca7097d8a37f"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-maildir-module.git", branch: "master"

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
