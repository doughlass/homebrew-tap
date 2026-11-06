class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.8.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.8.3/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "b31365cdee38dd913d3ee1c56b73098154d41c82bf0dc62820342ccc7c7d186e"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.8.3/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "a2a071c12cbf8a23a859f8eac95ea6ce410efbbdb5d170b7e2a844a0a7224863"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.8.3/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "5c717393936eb2b86cd5b113a2ad141f52b0d0815a05e0354cedbcbd62f91fa5"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.8.3/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "49a6028644e65435ff82ed4962db97ffb5afd71a8baa5883fe98578421263e95"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
