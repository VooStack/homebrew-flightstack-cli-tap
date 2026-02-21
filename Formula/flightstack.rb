class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.15/flightstack-1.3.15-macos-arm64.tar.gz"
      sha256 "c88235e9e90fe8fec1b0ead4536a8af412ab8b96b6caa90736d113ea9ff44393"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.15/flightstack-1.3.15-macos-x64.tar.gz"
      sha256 "08eda511b5e5822a09fc981c8e9c5d0e3ff3f27896348b7406f8076983842ed7"
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
