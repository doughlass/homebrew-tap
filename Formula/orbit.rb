class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.5.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.5.0/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "de13a964d70e39155c956a92e123612603d9f0ab8c9e486aadb0888a4dc87f99"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.5.0/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "93e7b4a598d5f4b76191a387bceb74023836bfcf32c7a3ed7cc6cb75acf886ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.5.0/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "d3f32e749ca90f1a35cc6d4730e40f3dbdb05343fa270effef451353e984d271"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.5.0/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "46e20f0a19e1aecd6c585391bf969760e97b7be75109eb5b8d23fdd70d2075b3"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
