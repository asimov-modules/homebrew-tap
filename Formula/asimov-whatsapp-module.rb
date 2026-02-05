class AsimovWhatsappModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-whatsapp-module"
  url "https://github.com/asimov-modules/asimov-whatsapp-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "bc9d418035870ee1f395e7423c246f312e397330154de6b62206181ef27ae5bd"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-whatsapp-module.git", branch: "master"

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
