class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-arm64.tar.gz"
      sha256 "090f2c4c1ab81b3ee9994298715cc62a20a108b6d64f06ef838391475f62469c"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-x64.tar.gz"
      sha256 "8b81320f9fdf8619e9d0365d7fd4fe3ead393eb2e05f0b140be9c5c0296a5ce6"
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
