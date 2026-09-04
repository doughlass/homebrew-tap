class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.7.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.7.0/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "ba49bafe975439325476fd9a14b94591ac3cfa5bfb52d9bf81b51fe95c4e4cfb"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.7.0/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "fa24cef5e4db72523bbb6d8aed7909e4f6b7b9a74f26ade196152026aab344cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.7.0/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "a44598688b256f7b93297aa9d09ea262df235afb875de2f515d83b269cedba68"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.7.0/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "ad86be5e89704bd17f77d8eeccac359be7944961e8345d6d3abb66b1928d1ec4"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
