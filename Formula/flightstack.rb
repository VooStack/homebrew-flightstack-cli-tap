class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.16/flightstack-1.3.16-macos-arm64.tar.gz"
      sha256 "dc60c8b7730bdf66884f0de05c7cf7d54813ffa4118beeba6f105415697cc32f"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.16/flightstack-1.3.16-macos-x64.tar.gz"
      sha256 "86db2e3b9031b019b160f01d01ea2629e1a91486e4c355eec081e2f34af5e7f5"
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
