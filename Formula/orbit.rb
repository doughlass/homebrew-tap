class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.6.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.0/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "a2dad276f425fc9a8784b0f8516053372af89596dc44bfbf09d0d63b0543d70a"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.0/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "5c1f222c3524a0ad14692ef2dfe691ff140901702a812f5ba3868090a1064520"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.0/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "60237d6ea12aff94af82bb63573ee8c1f0f2f615e102a5937f9da3e1827961c3"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.0/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "ce8718d3b9ffd6bcda9b5b3f4176fd03652067d4e5075bb2cfbbdc98827004fd"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
