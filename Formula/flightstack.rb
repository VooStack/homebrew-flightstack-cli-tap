class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.15/flightstack-1.2.15-macos-arm64.tar.gz"
      sha256 "f4bd251c83da7fa8deba03e5f7402b055b879278e9c799d3733c4ed7926d4ba7"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.15/flightstack-1.2.15-macos-x64.tar.gz"
      sha256 "f227df270a25b6564733c5a99fb692f30203d3d6fa703d4b1828075110551e34"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
