class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.2.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.2.0/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "de272f4878e854f8967c120e87afbef0de889f19e479e68777526ea74b90984e"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.2.0/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "71c3b8627b3627244419df9cc2c1fdd0e092ba6fc62d04b892f35e40baa295da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.2.0/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "8836f2f64e9b779ef1a8b28c0162344b293cda0364b6704573e855bd97f2f7f1"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.2.0/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "73348f8db88718e51a800f95ae40397edcaf98baf779a0f7a392a713cdc858ef"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
