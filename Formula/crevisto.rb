class Crevisto < Formula
  desc "CLI for Crevisto — 40 AI image tools, pay as you go"
  homepage "https://crevisto.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/javimosch/crevisto/releases/download/v0.1.0/crevisto-darwin-arm64"
      sha256 "4e752804a19b4b249668bc138b051fc4dec248ceae13d03ecceef4d68d485233"
    end
    on_intel do
      url "https://github.com/javimosch/crevisto/releases/download/v0.1.0/crevisto-darwin-amd64"
      sha256 "2c6f400feb6c10c2f99d27dddf72d3882f9e252d348fcf419a02dcb024159037"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/javimosch/crevisto/releases/download/v0.1.0/crevisto-linux-amd64"
      sha256 "3b596e6085924348edded9f5d433823b0183f80c9ebc0d94c45ce0d6b9e02300"
    end
  end

  def install
    # The downloaded file is the binary itself (no archive)
    if OS.mac? && Hardware::CPU.arm?
      bin.install "crevisto-darwin-arm64" => "crevisto"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "crevisto-darwin-amd64" => "crevisto"
    elsif OS.linux?
      bin.install "crevisto-linux-amd64" => "crevisto"
    end
  end

  test do
    assert_match "crevisto", shell_output("#{bin}/crevisto --help 2>&1", 0)
  end
end
