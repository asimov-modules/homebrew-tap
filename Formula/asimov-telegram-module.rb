class AsimovTelegramModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-telegram-module"
  url "https://github.com/asimov-modules/asimov-telegram-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "ac79b730ec72cd8adcd740d1f8bc1dc094feef49a480076d08a9122d60cf4842"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-telegram-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build
  depends_on "openssl@3" => :build
  depends_on "zlib" => :build

  def install
    if OS.linux?
      ENV["RUSTFLAGS"] = "-L /usr/lib/x86_64-linux-gnu"
      system "sudo", "apt-get", "install", "-y", "libc++-dev", "libc++abi-dev"
    end
    
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
