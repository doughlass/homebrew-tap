class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.6.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.3/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "0ecd7f212ddb2b9c474cdad1ffa201d72ac7636bee2cb76e33b36b2f08be8a6a"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.3/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "12ab513408b9f1d2679a47c79dcfcaa707745e66e704149111b1acd73e0b2b86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.6.3/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "89262978c2f179ed0fe85c498137f300334f020991ebc780dc75f3183727e445"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.6.3/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "c58f9049c276718af12b0173595747440739ca512d942ae19471973fb0e6ab05"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
