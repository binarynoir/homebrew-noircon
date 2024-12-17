class Noircon < Formula
  desc "Monitor websites and IP addresses to see if they are reachable and send notifications"
  homepage "https://github.com/binarynoir/noircon"
  url "https://github.com/binarynoir/noircon/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "6b33ff29c580f64f9367e6019890da0256b8b363706b3f68da757506e7b370c6"

  depends_on "bash"
  depends_on "coreutils"

  def install
    bin.install "noircon"
    man1.install "noircon.1"
  end

  test do
    system "bin/noircon", "--version"
  end
end
