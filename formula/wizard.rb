require "formula"
require_relative "../lib/private_strategy"

class Wizard < Formula
  desc "DOR⚡️ Flutter CI-Wizard"
  homepage "https://github.com/droidsonroids/flutter-ci-wizard"
  url "https://github.com/DroidsOnRoids/flutter-ci-wizard/releases/download/0.1.0/wizard.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "d3c0c3b1dae71f1dcd4c16e5b465f8d93c27d26bb43f2618621ab5308755cf81"
  head "https://github.com/DroidsOnRoids/flutter-ci-wizard.git"

  def install
    bin.install "wizard"
  end

  # Homebrew requires tests.
  test do
    assert_match "", ""
  end
end