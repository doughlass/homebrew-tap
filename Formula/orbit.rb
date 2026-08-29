class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.4.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.4.0/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "019e0c85b62bf5305570a4d36a9e01f6f333ee56bb34cf2ba44b0ad2988f4ae6"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.4.0/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "112664cc08841e7a2ad7f59b3f9dbd48370aeaea65eb0c8cb8f2da572b4e892a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.4.0/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "d2c2178ca3661c6ddb3d6abeda0a6bae4be18d868ddbb60ef032fce40416a6a7"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.4.0/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "571505db7270327c04c75e76a22d9e94980a072755b9b0012d279976b5632a96"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
