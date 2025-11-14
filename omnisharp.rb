class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "https://www.omnisharp.net/"
  version "1.39.15"
  license "MIT"

  depends_on "dotnet"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.15/omnisharp-osx-arm64-net6.0.zip"
    sha256 "678be5bb972d04bbf5e1426e5e7562261e176fa781784d0f13877d8c4391ec3e"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.15/omnisharp-osx-x64-net6.0.zip"
    sha256 "6ac1f8b1dfb1e4515f61d120f2cb5ab8404134ec62c441e4ab70ef30e0ac6d07"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.15/omnisharp-linux-arm64-net6.0.zip"
    sha256 "376e2007b9a828e7ef58aac1c3397723e0060c8251f29a86b0d8d6747c000e85"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.15/omnisharp-linux-x64-net6.0.zip"
    sha256 "41838cd21abbf01d7ab41fd53d19297a6f3ec5a07bb75ec139b0ead4195d1239"
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"OmniSharp"
    bin.install_symlink libexec/"OmniSharp"
  end

  test do
    system bin/"OmniSharp", "--help"
  end
end
