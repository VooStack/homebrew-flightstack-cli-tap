class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-arm64.tar.gz"
      sha256 "68a14661d9aa6579c5309851155f69670377f44181858660ecbcf061dab2eb68"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-x64.tar.gz"
      sha256 "0f85c04450738faae00796a5b9b72a3a845e5182510f154d448545f02c2ec81c"
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
