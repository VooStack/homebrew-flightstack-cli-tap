class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.10/flightstack-1.3.10-macos-arm64.tar.gz"
      sha256 "24f59ff4dd529dd6055b4eb2a715054b26cca9ab369649f4aceb9f3fb23c526f"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.10/flightstack-1.3.10-macos-x64.tar.gz"
      sha256 "e58a18756afa23692a4af88dafa3ccc9d813a69d771740786c572837365e6248"
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
