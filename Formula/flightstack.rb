class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.22/flightstack-1.2.22-macos-arm64.tar.gz"
      sha256 "c1f641342c230306996d0ed982469f8d395a0d3a5620baaf79d0459a6069cd3d"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.22/flightstack-1.2.22-macos-x64.tar.gz"
      sha256 "e558731856a6db691371f4cc6f058df59135fdbcef771a2e6ee1cb0b054b9a25"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
