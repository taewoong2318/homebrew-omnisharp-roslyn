# homebrew-omnisharp-roslyn

Homebrew tap for
[OmniSharp/omnisharp-roslyn](https://github.com/OmniSharp/omnisharp-roslyn)

Background: [The official Homebrew
tap](https://github.com/OmniSharp/homebrew-omnisharp-roslyn) seems to be no
longer maintained.

## Usage

Tap the repository and install OmniSharp:

    brew tap taewoong2318/omnisharp-roslyn
    brew install omnisharp

The executable will be available as `OmniSharp` in your PATH.

## About `DOTNET_ROOT`

The formula `omnisharp` depends on `dotnet` and Homebrew installation of .NET
needs the environment variable `DOTNET_ROOT` to be set. Specify the result of
`$(brew --prefix dotnet)/libexec` to `DOTNET_ROOT` so that OmniSharp can
recognize the .NET runtime.
