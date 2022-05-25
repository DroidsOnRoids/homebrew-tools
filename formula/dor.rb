require "formula"
require_relative "../lib/private_strategy"

class Dor < Formula
  desc "DOR⚡️ Flutter Command Line Interface"
  homepage "https://github.com/droidsonroids/dor-flutter-cli"
  url "https://github.com/DroidsOnRoids/dor-flutter-cli/releases/download/0.4.51/dor.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "588d22267c75fa16038176b1a397845fc99e0f8ce6e4d4c04a30953bfe98f87b"
  head "https://github.com/DroidsOnRoids/dor-flutter-cli.git"

  def install
    bin.install "dor"
  end

  # Homebrew requires tests.
  test do
    assert_match "DOR⚡️ Command Line Interface", shell_output("#{bin}/dor", 2)
  end
end