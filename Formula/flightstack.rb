class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-arm64.tar.gz"
      sha256 "7f20d4f6a61218f3d096c8c253f4cbcfe55c68953d2f32cdc212912b1caa19dc"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-x64.tar.gz"
      sha256 "f9eeed22162cc9dabf0f3732eb0d72415b51c3dfa8d49530d362d5978bb53f0d"
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
