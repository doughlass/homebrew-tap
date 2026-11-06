class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.8.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.8.2/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "25294aa1efae355bd5e8b4d2dc7cc6e7eab041db3f2b78c450da10463a17dfcd"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.8.2/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "54b298866f08c704b7824483f2f921e8d147215855cb5812c8c08ef47f88e9bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.8.2/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "a91211dc747a269997fbddb46e54f58733c77002e434e267c4e31a534a36ca72"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.8.2/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "c804bf089c5a196648d016f2bdeada7ccdf51994e8fb097b7a5119248dd9ff9e"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
