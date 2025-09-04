class AsimovTelegramModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-telegram-module"
  url "https://github.com/asimov-modules/asimov-telegram-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "26f34417dc8849af14261a3b46e23e03162e3548830a38c4795399c791fba8aa"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-telegram-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256                               arm64_sequoia: "058b487cd97271875db9be4c28d62cc7e59eba95fd73e1332d644c015f690c09"
    sha256 cellar: :any_skip_relocation, ventura:       "baf68d6c89f6ddc3920ffcc7d9c1450828ab8b53c0aaa0da934b9478974cffd1"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e6699d42e849f70d9df4df39293400f8539822ef34aa4addd7631909716d844b"
  end

  depends_on "openssl@3" => :build
  depends_on "rust" => :build
  depends_on "zlib" => :build

  def install
    if OS.linux?
      ENV["RUSTFLAGS"] = "-L /usr/lib/x86_64-linux-gnu"
      system "sudo", "apt-get", "install", "-y", "libc++-dev", "libc++abi-dev"
    end

    # Pass the environment variables through
    env_vars = ENV.select { |key, _| key.start_with?("HOMEBREW_ENV_VAR_") }
    env_vars.each do |key, value|
      arg_name = key.sub(/^HOMEBREW_ENV_VAR_/, "")
      ENV[arg_name] = value
      ohai "Setting #{arg_name} = #{value}"
    end
    
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
