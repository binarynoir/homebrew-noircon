class Noircon < Formula
  desc "Monitor websites and IP addresses to see if they are reachable and send notifications"
  homepage "https://github.com/binarynoir/noircon"
  url ""
  sha256 ""

  depends_on "md5sha1sum"
  depends_on "jq"

  def install
    bin.install "noircon"
    man1.install "noircon.1"
  end

  test do
    system "bin/noircon", "--version"
  end
end
