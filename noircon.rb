class Noircon < Formula
  desc "Monitor websites and IP addresses to see if they are reachable and send notifications"
  homepage "https://github.com/binarynoir/noircon"
  url "https://github.com/binarynoir/noircon/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "eafc51ef15e72f624266443e4567342b6bcda8beee8a694795fd593c73523bd1"

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
