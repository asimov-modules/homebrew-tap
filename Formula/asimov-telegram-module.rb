class AsimovTelegramModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-telegram-module"
  url "https://github.com/asimov-modules/asimov-telegram-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "2516ab6672413f07de1079e67a4ef126c43e005c87b42db13fa087e3f7893afe"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-telegram-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "llvm" => :build if OS.linux?
  depends_on "openssl@3" => :build
  depends_on "rust" => :build
  depends_on "zlib" => :build

  def install
    system "cargo", "install", "-vv", *std_cargo_args
  end

  test do
    assert true
  end
end
