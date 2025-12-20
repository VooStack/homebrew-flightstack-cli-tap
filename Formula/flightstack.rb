class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.37/flightstack-1.2.37-macos-arm64.tar.gz"
      sha256 "beeda1d47651ddac20e07574035c7d1e236abd02becc12887260c149b6d3e318"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.37/flightstack-1.2.37-macos-x64.tar.gz"
      sha256 "985a43d7ea88b1a15a3942f8d5c46fa8a732dcfc10ff063a1647b5cf62985d3c"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
