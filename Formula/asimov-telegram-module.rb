class AsimovTelegramModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-telegram-module"
  url "https://github.com/asimov-modules/asimov-telegram-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "9f1c5b4b8fa6eb112b987efd4013bc6ba081bbe62a9cb649dde69b333d3ba57f"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-telegram-module.git", branch: "master"

  # livecheck do
  #   url :stable
  #   strategy :github_latest
  # end

  depends_on "llvm" => :build if OS.linux?
  depends_on "openssl@3" => :build
  depends_on "rust" => :build
  depends_on "zlib" => :build

  def install
    ENV.append_to_rustflags "-C link-arg=-L/usr/lib/x86_64-linux-gnu" if OS.linux?

    system "cargo", "install", "-vv", *std_cargo_args
  end

  test do
    assert true
  end
end
