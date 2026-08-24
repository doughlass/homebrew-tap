class Orbit < Formula
  desc "Terminal UI for AWS"
  homepage "https://github.com/doughlass/orbit"
  version "1.0.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.0.2/orbit-tui-aarch64-apple-darwin.tar.gz"
      sha256 "7a7e1a44b62aabe343ff828376e49ea681438ba8857e2f269cff5254fa4a54dc"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.0.2/orbit-tui-x86_64-apple-darwin.tar.gz"
      sha256 "c0fd0ff39d082ff842d7da35caf7b89276f97cae49af24ff8408675a52ae59ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/doughlass/orbit/releases/download/v1.0.2/orbit-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab4b835fcc9e424a9b588e9ccf7e1a7949d1d6833849af30bdb1d8f312bdb5d7"
    else
      url "https://github.com/doughlass/orbit/releases/download/v1.0.2/orbit-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4e1f7d6c80c8596132064a53df43cd194880408a3ef2eab46dc956af64a80e4a"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    system "#{bin}/orbit", "--version"
  end
end
