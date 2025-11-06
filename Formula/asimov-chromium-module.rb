class AsimovChromiumModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-chromium-module"
  url "https://github.com/asimov-modules/asimov-chromium-module/archive/refs/tags/0.1.3.tar.gz"
  sha256 "f13a79709e13782c58b6d9330dc5854d64883e0967893e1e58683c368b04514f"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-chromium-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "60f3ceb86bb5674fb4b044fa0ae8af376df9a8454b933302159ee888f2ecd037"
    sha256 cellar: :any_skip_relocation, sequoia:       "a667e841b5767b8cc0b41d6a3c78e6994424fb2e1bbb01ae19a0c04ef7dea369"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "22c2d4332204db3633147502ab482fb4a0b99683d2fb0046da7ec01577f2de67"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
