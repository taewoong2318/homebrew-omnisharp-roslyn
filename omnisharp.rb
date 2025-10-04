class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "https://www.omnisharp.net/"
  version "1.39.14"
  license "MIT"

  depends_on "dotnet"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.14/omnisharp-osx-arm64-net6.0.zip"
    sha256 "c3a345e07e6eda5c6adf9d4fc067640dabe0c1a75c2cac49340aec21f1687799"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.14/omnisharp-osx-x64-net6.0.zip"
    sha256 "c1dd5fb6a45420b55b1698f1a49da056b643c834d57004bc65ed32ee9335f308"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.14/omnisharp-linux-arm64-net6.0.zip"
    sha256 "0e2c69f191268959d68a35e1cc8fd832a688af516a9945ef25dc8c6ea014a7c2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.14/omnisharp-linux-x64-net6.0.zip"
    sha256 "eba3f00a807517789be0188f86f8b685d74359d6bd684d7a0b0125e33ad59d89"
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"OmniSharp"
    bin.install_symlink libexec/"OmniSharp"
  end
end
