class AsimovLumaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-luma-module"
  url "https://github.com/asimov-modules/asimov-luma-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "1f991edfb5148f30d313d75de2fe38feedb91ae5faf63d747d0872965ad55347"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-luma-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e7988edcc60b9b9ffb46b3f8ac29d1429d14363a182cccc4ba8bf601de1bb779"
    sha256 cellar: :any_skip_relocation, ventura:       "6202cff7d9c55383ab63853b323d7a36dc564226954585d0a339c38e179e1d20"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6297db99b9db576489e131d9672eebbd962513b61c9e7261088c6cd4a59e2665"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
