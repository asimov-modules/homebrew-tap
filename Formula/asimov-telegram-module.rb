class AsimovTelegramModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-telegram-module"
  url "https://github.com/asimov-modules/asimov-telegram-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "8d7f39927d517d9762c21d133b5eec2b52b09b60e77e50865a97bd5cec119208"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-telegram-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build
  depends_on "openssl@3" => :build
  depends_on "zlib" => :build
  depends_on "llvm" => :build if OS.linux?

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
