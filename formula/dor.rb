require "formula"
require_relative "../lib/private_strategy"

class Dor < Formula
  desc "DOR⚡️ Flutter Command Line Interface"
  homepage "https://github.com/droidsonroids/dor-flutter-cli"
  url "https://github.com/DroidsOnRoids/dor-flutter-cli/releases/download/0.4.42/dor.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "b86d773bc0daeade5cdcab0e53098709830137582679c9afe638cac110984304"
  head "https://github.com/DroidsOnRoids/dor-flutter-cli.git"

  def install
    bin.install "dor"
  end

  # Homebrew requires tests.
  test do
    assert_match "DOR⚡️ Command Line Interface", shell_output("#{bin}/dor", 2)
  end
end