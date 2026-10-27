class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.6/flightstack-1.6.6-macos-arm64.tar.gz"
      sha256 "d464a9e88739fe8e7f82caa7e35825c9043d9c5dc858e146995c13647803e323"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.6/flightstack-1.6.6-macos-x64.tar.gz"
      sha256 "f082929f19a837709781395584f0eaf5e398984675b4f8e7470486cb0d945afe"
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
