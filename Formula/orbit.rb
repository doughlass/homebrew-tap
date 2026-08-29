class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.3.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.3.1/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "fb76a4f2d992b185a830f203139e8e54fafcaeccd277408897d6dde13220b42b"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.3.1/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "30b288930cc963977c8e949ddc1b2c09f9ccf001a749b6932c4693c31e879ee6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.3.1/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "e34622ece7c6a9d25caef1b9348b6f1b002ac2570bfcef009bf724ec14602021"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.3.1/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "5bf5340abc4df416e505d806ca2a59bf511b62eb30c5462dfb5449bb0553affe"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
