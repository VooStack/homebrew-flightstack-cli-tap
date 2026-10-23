class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.16/flightstack-1.5.16-macos-arm64.tar.gz"
      sha256 "c4e53f7559d19a108c001871f818536108ffebed6dec905f5b38f1c1d0767885"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.16/flightstack-1.5.16-macos-x64.tar.gz"
      sha256 "ae78ba812711d417b4d9f675e89fcca07128c5bd6054a9b71876b33b033a8d79"
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
