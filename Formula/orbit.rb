class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.6.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.2/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "820f8d94f75a0e82c08e9cad4d71c324854bb0c5f50ddc153903408503bf8b54"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.2/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "d54c483df7f469adf3d858cad42abd6a25e3df239b5c50661edb74e62d1433d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.2/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "1451ba2c7a0d05abc29b05678495bbf3d6932f689d98cf7595fa3394c54701a5"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.2/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "6ff443246caec1ef0fb82606f9d01b924da9887ca2d23d162ae1a8f66c47bd36"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
