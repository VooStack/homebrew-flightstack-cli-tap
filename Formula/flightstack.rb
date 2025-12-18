class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.29/flightstack-1.2.29-macos-arm64.tar.gz"
      sha256 "8bff6aa9bac636d582b92ce2869a4b43189a8103eaa3918f26e9ef33cf76845e"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.29/flightstack-1.2.29-macos-x64.tar.gz"
      sha256 "a93eccc580e952484f6ba4ed9c820bcdcc082791f4f63dec6b5a30de9b82c65c"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
