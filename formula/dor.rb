require "formula"

class Dor < Formula
  desc "DOR⚡️ Flutter Command Line Interface"
  homepage "https://github.com/droidsonroids/dor-flutter-cli"
  url "https://github.com/DroidsOnRoids/dor-flutter-cli/releases/download/v0.1/dor.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "aa05f817f446ab53cff1702e5613cf549bfb1f2ec8a260b409baa77de53ab746"
  head "https://github.com/DroidsOnRoids/dor-flutter-cli.git"

  def install
    bin.install "dor"
  end

  # Homebrew requires tests.
  test do
    assert_match "DOR⚡️ Command Line Interface", shell_output("#{bin}/dor", 2)
  end
end