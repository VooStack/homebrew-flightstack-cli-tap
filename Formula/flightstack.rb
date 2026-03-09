class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.0/flightstack-1.5.0-macos-arm64.tar.gz"
      sha256 "e9c75a278a33f291b7ef4dc4a94309e841667e16639d47b8bef3f2f27057765b"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.0/flightstack-1.5.0-macos-x64.tar.gz"
      sha256 "d32c544f9de53dc719acde6d922202365b0193f8ddefe03494bf516063ccea23"
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
