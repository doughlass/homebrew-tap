class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.3.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.3.0/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "acd3226ee44a80f4d71777a482e9c502980bae474b0652c4cc084020bdcedfa4"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.3.0/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "91b3805d21b58d1a8b812644a1013dc85480a0ae01f751bbe61eb2d6167bc9f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.3.0/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "218f3d16a1fa9fff558c196be3e76e3f94991c18161488bf7f4cde1f32c3dcbd"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.3.0/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "ecb6807f6799e607663ace11a930407a42b1336ac0f30f14efa9c7bf376f822f"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
