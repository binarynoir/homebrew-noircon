class Noircon < Formula
  desc "Monitor websites and IP addresses to see if they are reachable and send notifications"
  homepage "https://github.com/binarynoir/noircon"
  url "https://github.com/binarynoir/noircon/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "fa3052241a9425dde2705b35940b031e0da36505cbe71c7f18448b9938c6cd88"

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
