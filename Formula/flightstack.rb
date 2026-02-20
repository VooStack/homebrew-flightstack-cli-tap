class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.11/flightstack-1.3.11-macos-arm64.tar.gz"
      sha256 "b1d03afe1d328dd6ff16f27b76d7f7b605a45c396357088d9bad089ccb6b0ba3"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.11/flightstack-1.3.11-macos-x64.tar.gz"
      sha256 "754b6df52d4543a49377b3ef5fc7ac895db45205d139db5064ac8c09b285812f"
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
