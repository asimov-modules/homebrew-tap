class AsimovTelegramModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-telegram-module"
  url "https://github.com/asimov-modules/asimov-telegram-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "bbc0b9b1d06eff756868854c07e5757d1046806182972c2fe6e6fb840318db29"
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
    ENV.append_to_rustflags "-L /usr/lib/x86_64-linux-gnu" if OS.linux?

    system "cargo", "install", "-vv", *std_cargo_args
  end

  test do
    assert true
  end
end
