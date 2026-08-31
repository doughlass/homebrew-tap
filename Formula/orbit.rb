class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.6.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.1/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "093fde946d5baade2f23553ffd8e135cae9776482a9e5f0fbe29af2d7ae3de83"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.1/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "8880dd665c6aafe275046fbf04a68d84e86463d5e1bce3d65d5bc33f6cfa8f81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.1/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "f637e2f460095e6f8eb5ec49162e8b77cbdcaa742181402c03184f6a606c4089"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.1/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "a070db95f6f804fca9d024aa5da4264aee5c5584ecff9f2b6fd8b4ec1e9b55f6"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
