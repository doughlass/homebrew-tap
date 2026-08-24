class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.1.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.1.2/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "14222d5c5ec87e4266252f223ead8126f2c6cda9237c3973f3dcae8e019720e8"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.1.2/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "f90f447067652e73c6cfe60ae02e14be556e12ec9770bd7fde5d8bd9aee4293e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.1.2/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "4a20b189775ddf4e64aeabb854abd9d5284d0a8646410b3e692b7c505f17309f"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.1.2/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "7ec2240b93402d4d21797f953dae56a5898c0a0cca2e7e6e132085745bd9ac71"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
