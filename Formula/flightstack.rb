class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.51/flightstack-1.2.51-macos-arm64.tar.gz"
      sha256 "b885b41608e6ad29eada099f538489c6d941e975d5f8f7088401fa0e8be0e7f3"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.51/flightstack-1.2.51-macos-x64.tar.gz"
      sha256 "baeef66cb9fc181b4029ef05f7cec82e9f4cd3ec7c980af382da34d4f02b6b9e"
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
