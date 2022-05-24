require "formula"
require_relative "../lib/private_strategy"

class Dor < Formula
  desc "DOR⚡️ Flutter Command Line Interface"
  homepage "https://github.com/droidsonroids/dor-flutter-cli"
  url "https://github.com/DroidsOnRoids/dor-flutter-cli/releases/download/0.4.41/dor.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "f732a91f0dfc6ffcf083d5c13ac647c4d6cf85e907dc23e96f1c5ec9e6440689"
  head "https://github.com/DroidsOnRoids/dor-flutter-cli.git"

  def install
    bin.install "dor"
  end

  # Homebrew requires tests.
  test do
    assert_match "DOR⚡️ Command Line Interface", shell_output("#{bin}/dor", 2)
  end
end