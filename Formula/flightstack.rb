class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.15/flightstack-1.3.15-macos-arm64.tar.gz"
      sha256 "e1f0f1cc8b00fac0e57e6e6819d7ed268bfe02ac54f9ce8a07b5237f86b5769c"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.15/flightstack-1.3.15-macos-x64.tar.gz"
      sha256 "147b369866fa7db4b68a4733e8b7c9df8385c5d5f43aa1f99fce0c2328c1a344"
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
