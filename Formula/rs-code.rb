class RsCode < Formula
  desc "AI-powered coding agent for the terminal"
  homepage "https://github.com/avala-ai/rs-code"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/rs-code/releases/download/v0.1.1/rc-macos-aarch64.tar.gz"
      sha256 "df3defb8ac647f6b9acd4f701b5072f07e4e5c0541b63f648d07bc5f0e4655b1"
    else
      url "https://github.com/avala-ai/rs-code/releases/download/v0.1.1/rc-macos-x86_64.tar.gz"
      sha256 "c945261d38418890faf6cab968ac2c973a4048b5b00a8a4bc3004a6dec6460fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/rs-code/releases/download/v0.1.1/rc-linux-aarch64.tar.gz"
      sha256 "f937ce8d847545201866efd0af8dd00d088e04f2a196c6073fdfa58676c7e2f4"
    else
      url "https://github.com/avala-ai/rs-code/releases/download/v0.1.1/rc-linux-x86_64.tar.gz"
      sha256 "03ed66cba0c70e08dd69577ce7e66ecf5d0fa001c6b2a64120c8d8118b067646"
    end
  end

  def install
    bin.install "rc"
  end

  test do
    assert_match "rc", shell_output("#{bin}/rc --version")
  end
end
