class Crevisto < Formula
  desc "AI image generation from your terminal — 100+ curated tools, pay-per-use"
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
    bin.install Dir["crevisto-*"].first => "crevisto"
  end

  test do
    assert_match "crevisto", shell_output("#{bin}/crevisto --help 2>&1", 0)
  end
end
