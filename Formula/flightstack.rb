class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.9/flightstack-1.5.9-macos-arm64.tar.gz"
      sha256 "e48dbd311bc4bb7f1922dcb7c7a8bc54b3eb4511108e08a351f1163e8a85de34"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.9/flightstack-1.5.9-macos-x64.tar.gz"
      sha256 "fdd6d5a6d57c71318e2dd988bf1a741bde5b0c12c2b96f097901f3b3c0ffca55"
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
