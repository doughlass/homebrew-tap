class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.1.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.1.1/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "b63ae5a6b20e8353651e8be216aa8f1d85875f266c4293e100dfc1e28935698c"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.1.1/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "60e30ccb6dfeca3376842c9ea5fd41491c02c93af612868408ace096b5fe87ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.1.1/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "da5e309a476f369a8ce7e19d76b9741338753b3830f34821b45f9a49f1441b27"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.1.1/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "b4df5bd678f24109e5008f764327c836011f3f4716ad5dcb03d002bf21ccd289"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
