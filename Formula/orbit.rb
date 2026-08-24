class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.1.0/orbit-tui-aarch64-apple-darwin.tar.gz"
      sha256 "8043d07f3f8612e078e007d080ff89e675a79408ad3eeb3851fe8372445e8521"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.1.0/orbit-tui-x86_64-apple-darwin.tar.gz"
      sha256 "5936ed0ffcde6bfc3f09813422927a8264c05e126844ed0ebf3bf9785ec884e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.1.0/orbit-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df2d4ef74ce391538ac2261113c400b9e1a6022b659df415f2670acddecc26c1"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.1.0/orbit-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b45ec50a5d0b3512b169e370a0a42329655a8739c64857ac5465e644cde627d4"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
