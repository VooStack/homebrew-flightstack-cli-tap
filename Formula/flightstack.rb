class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.27/flightstack-1.2.27-macos-arm64.tar.gz"
      sha256 "c041820d0b286a911dcc33fdc4648e0f0c07ff6f3ee908b901b9b3d86dc87288"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.27/flightstack-1.2.27-macos-x64.tar.gz"
      sha256 "e42ba38c9036d7ca074a28803e4586f866791ac0817a951811ddce584244b6ea"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
