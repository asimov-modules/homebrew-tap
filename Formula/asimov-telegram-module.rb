class AsimovTelegramModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-telegram-module"
  url "https://github.com/asimov-modules/asimov-telegram-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "6384cc9c3264a486fe3ef892646afe2599be23ce0f6505d47987a26383fc13fb"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-telegram-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256                               arm64_sequoia: "0e33c87d5a151c722180952e277489ae52d944eb73b8ecb27fb98ec8065e711b"
    sha256 cellar: :any_skip_relocation, ventura:       "55d4a9341e8f7da3455c9d60fe0d7762dbfc73fe02ceed89896226cd3c83cc33"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "885840e11a44cfc35c5e76e01eed0f9c3aba5f4609c9ff1c40fa957b0a557c6a"
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
