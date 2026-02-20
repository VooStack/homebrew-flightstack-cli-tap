class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.13/flightstack-1.3.13-macos-arm64.tar.gz"
      sha256 "52644645207757c5b649c9fc72b63462782c2bd040fe14e8b4d64c5a1583e67d"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.13/flightstack-1.3.13-macos-x64.tar.gz"
      sha256 "aebe637a2ba7a0f030289e39aba5e563b4bab5702619c1372bfbc43b134221a7"
    end
  end

  def install
    bin.install "flightstack"
    bin.install "flightstack-agent"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
