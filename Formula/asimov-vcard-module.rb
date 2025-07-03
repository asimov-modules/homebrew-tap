class AsimovVcardModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-vcard-module"
  url "https://github.com/asimov-modules/asimov-vcard-module/archive/refs/tags/0.0.0.tar.gz"
  sha256 "cf31bc84cacb1b3faeef6cf76f4ddbfd150437f9907d52623d75fe6e95a4b158"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-vcard-module.git", branch: "master"

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
