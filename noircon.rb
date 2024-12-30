class Noircon < Formula
  desc "Monitor websites and IP addresses to see if they are reachable and send notifications"
  homepage "https://github.com/binarynoir/noircon"
  url "https://github.com/binarynoir/noircon/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "06c9708ebba836069006d97a0993dae53af50e9b0ad39ba86ba599963483994f"

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
