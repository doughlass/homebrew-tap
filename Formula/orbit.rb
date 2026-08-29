class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.4.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.4.1/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "1d7aff350a086a2a7bcddb0e830a3e287a23ff296196d8a5e387267ffa882825"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.4.1/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "c849af6df803a41eb3c01323fd985935b6d884898bd12f82b335a85991a43e7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.4.1/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "86038ee9fcb25e9729fabbe2da1b4328c562817bec12c7d9501547a91f6e2c57"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.4.1/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "caf91bee003785c1a1b527372e8a0fd7e14f821291ed7ebed4d9b0cc3c712c3c"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
