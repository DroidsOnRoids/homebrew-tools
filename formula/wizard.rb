require "formula"
require_relative "../lib/private_strategy"

class Wizard < Formula
  desc "DOR⚡️ Flutter CI-Wizard"
  homepage "https://github.com/droidsonroids/flutter-ci-wizard"
  url "https://github.com/DroidsOnRoids/flutter-ci-wizard/releases/download/0.1.1/wizard.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "74e7b159fe84085a2d86fe57715594afebd7491c946675867c04c11db0bc9856"
  head "https://github.com/DroidsOnRoids/flutter-ci-wizard.git"

  def install
    bin.install "wizard", "bitrise", "project_setup"
  end

  # Homebrew requires tests.
  test do
    assert_match "", ""
  end
end