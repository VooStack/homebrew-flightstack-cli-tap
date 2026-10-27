class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.5/flightstack-1.6.5-macos-arm64.tar.gz"
      sha256 "b2f130d1619a8b15a84b4749dfc03c2b6979d880cab1d5653d138c931f64cabf"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.5/flightstack-1.6.5-macos-x64.tar.gz"
      sha256 "a8018f63ddf5aeedc1360d40bf998da0d1bbeeea962f996d0e6330ad4c05797b"
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
