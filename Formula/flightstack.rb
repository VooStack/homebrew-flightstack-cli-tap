class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.10/flightstack-1.5.10-macos-arm64.tar.gz"
      sha256 "51da2f12d372c9ac70d92a41577350adf26092acb49ffe4c64e1ccac748f8562"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.10/flightstack-1.5.10-macos-x64.tar.gz"
      sha256 "51da2f12d372c9ac70d92a41577350adf26092acb49ffe4c64e1ccac748f8562"
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
