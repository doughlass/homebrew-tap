class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.0.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.0.1/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "3eabefe1d6b6628ae7245069280cfec4a8f09889d6c6bcf2353bf4e93c796b76"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.0.1/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "9cd49cf9a18b2be2e7e51e0fe07cd9844d5d0aa1d8e300aedb71477acf56521d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.0.1/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "6a8656fc6059a61038f0812e82587f36437be3ac7178d5609c161a41b1a6228d"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.0.1/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "af2de18f1b7bdc53a0c3b25cdf7223829e4508c128a6c8cc69c3e9448e3cfbac"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
