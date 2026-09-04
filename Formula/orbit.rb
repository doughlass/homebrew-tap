class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.6.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.5/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "56bc4d5b1d65d471d2963d5b616a5fcd717b6687dcd1e37e5c1bcd451f50220c"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.5/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "e37a49c93211d63ddc87524da749292da17005d6745297ad548cb55cc7d39f50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.5/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "e8790d2e20de209d4685d68c35dbd19bb274bbdc890e2e9cbe3734872f00d8f8"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.5/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "898a67fb39dc98eb93d1dc90fe746ca13d06eb62eda1954b2f44230bddc6eede"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
