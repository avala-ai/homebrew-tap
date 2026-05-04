class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.21.1/agent-macos-aarch64.tar.gz"
      sha256 "4158b066a4316b9005b66f0b63d1594a7086e55313bf8b958d11009d9deca48b"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.21.1/agent-macos-x86_64.tar.gz"
      sha256 "4dbd2a91741d36391f1e76706556452dc8b83e561b61110604ac24ff964b41d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.21.1/agent-linux-aarch64.tar.gz"
      sha256 "d1798c6341063c93d1398871b77b6d2b58fd68dbe6b7d80ed43416dabbb6cf4d"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.21.1/agent-linux-x86_64.tar.gz"
      sha256 "ae3079de359a06efbe581eaae33ca794b30e4a74db259542e1aee417cd04c079"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.21.1", shell_output("#{bin}/agent --version")
  end
end
