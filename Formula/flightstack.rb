class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.15/flightstack-1.5.15-macos-arm64.tar.gz"
      sha256 "6c46dfc5cd50776e1c5c40d47cb4a27330d77213378addb49bfc9985ac614f9b"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.15/flightstack-1.5.15-macos-x64.tar.gz"
      sha256 "e4081424f4db94435c583bb1e33bed60c7aece9d84523676e5748f76c190ff56"
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
