class AsimovTelegramModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-telegram-module"
  url "https://github.com/asimov-modules/asimov-telegram-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "b15cc4c3b971d46b08ffab8996356346a8dc27eefa1898147403af0ad37f54a6"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-telegram-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256                               arm64_sequoia: "31c05165e84e2711c1e2c15039ca904acf301a925b66a09590a906dd4cfb3f24"
    sha256 cellar: :any_skip_relocation, ventura:       "9c25de413dcd8c3b89c0e15861489f1f815200e69fe195749221b1f27a388f9b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "86c3848d49439b961d765b586b84ad068982b146d9032d6dfb1c22eea00ff9ac"
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
