class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.14/flightstack-1.5.14-macos-arm64.tar.gz"
      sha256 "7a260854e69056410e200442cba0edcb327a0a4008580f50efa5ca3d8f219382"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.14/flightstack-1.5.14-macos-x64.tar.gz"
      sha256 "2457b8739eba62f3b7c16421555544ac5a35bba0e04f95b301e7c84be463738d"
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
