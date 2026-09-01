class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.6.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.4/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "0bdb9c9ea3a5fb47c2b45a98b0d3129e460b78970ca5b05066409fe6a9a1c07f"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.4/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "f3c90a68b403d22341cec61b8877af8aff09590f19667c2f2ed14b871760d881"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.4/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "6ace3fa2ead4096884692db8287985efb22428eba87b375521bcc9c707583c10"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.4/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "3d6237c14e33400ee36ae98e8cebffaf65de5030fcf809f87232cabfe507f604"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
