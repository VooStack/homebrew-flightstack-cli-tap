class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.20/flightstack-1.2.20-macos-arm64.tar.gz"
      sha256 "1a134146938b108d45caf74bbb1eedcc323ad3b6e43debba2144db79402b6e63"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.20/flightstack-1.2.20-macos-x64.tar.gz"
      sha256 "4978f913b8679803d85f77c2fd4737705b7d50ea01c58dba80dcbd140d0648c0"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
