class AsimovValkeyModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-valkey-module"
  url "https://github.com/asimov-modules/asimov-valkey-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "24f3e6730efbed91300ff0d3e08f76c9c7b757605bf0107f2c06aec9e7c082bb"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-valkey-module.git", branch: "master"

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
