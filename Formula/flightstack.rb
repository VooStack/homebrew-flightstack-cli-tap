class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.18/flightstack-1.3.18-macos-arm64.tar.gz"
      sha256 "782a85e212a5d1bc109c550f9f9b31111aab4bf79b57b40252b3b817bc833e45"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.18/flightstack-1.3.18-macos-x64.tar.gz"
      sha256 "92eeb4b2979331b9a52a6cbb4821e7a22d24f2722b97f7e331499d256d090050"
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
