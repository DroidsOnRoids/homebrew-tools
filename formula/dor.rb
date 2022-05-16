require "formula"
require_relative "../lib/private_strategy"

class Dor < Formula
  desc "DOR⚡️ Flutter Command Line Interface"
  homepage "https://github.com/droidsonroids/dor-flutter-cli"
  url "https://github.com/DroidsOnRoids/dor-flutter-cli/releases/download/0.3.3/dor.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "a5409b7a7b0c45f4185d1b9c49462b86f44e31a51a2a68601dda2811dbef9db1"
  head "https://github.com/DroidsOnRoids/dor-flutter-cli.git"

  def install
    bin.install "dor"
  end

  # Homebrew requires tests.
  test do
    assert_match "DOR⚡️ Command Line Interface", shell_output("#{bin}/dor", 2)
  end
end