class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.8.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.8.0/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "9ab72ebc13d3c6a1bba869b86e54381ac94a780fc1388919134686701de4ce98"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.8.0/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "31565f4fbb380e6e7fc05168129d6ebb70a31802020c372c64ff4373da426ba0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.8.0/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "781c3f7d03cac3a9d7d71c930197b671e2e48e390335bf87e0357c41e0b06903"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.8.0/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "c4b4eb4b2d8f14f2667f0f6508efd20a4645f4206792a7c5edd29906ba4476a5"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
