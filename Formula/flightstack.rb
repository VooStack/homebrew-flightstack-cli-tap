class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.12/flightstack-1.5.12-macos-arm64.tar.gz"
      sha256 "d38c013401d98dbd49bbdbefc5617ce3e48ee0c6c2b56419f26e3d341feae8b4"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.12/flightstack-1.5.12-macos-x64.tar.gz"
      sha256 "74cc688c790d9db163415f964b0393775c6adae6ff97a53eb911311e068f0dae"
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
