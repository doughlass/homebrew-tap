class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.8.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.8.1/orbit-tui-aarch64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "ddc316f50c4764014545327342360d875278a0c6e65f229646bbd3df70a13182"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.8.1/orbit-tui-x86_64-apple-darwin.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "8b88928f1658cb40c2d33c4ce0913342c1c723d567049bdb000dffd24a047d03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.8.1/orbit-tui-aarch64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "fdc1ada1a5ea9348f2b3fcb83a7b5ca38a604a579017f3ff6925a5cb45fee2e5"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.8.1/orbit-tui-x86_64-unknown-linux-musl.tar.gz",
          using: CurlDownloadStrategy,
          headers: ["Accept: application/octet-stream"]
      sha256 "a6b24ae92da88e9fb939f766db5be02fe6c157a7ad66a7e006c81cb46b34528b"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
