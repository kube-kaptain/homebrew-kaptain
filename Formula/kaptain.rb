require_relative "../version"

class Kaptain < Formula
  desc "Meta package - installs all kaptain-* brew packages"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-42-#{version}.zip"
  sha256 "83c4bdcb072a1457992044f3250d2e5306fdec6f2c26d19f71b8410842bef647"
  license "MIT"

  depends_on "kaptain-build"
  depends_on "kaptain-cli"
  depends_on "kaptain-encryption"
  depends_on "kaptain-util"

  def install
    bin.install "kaptain-42"
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/kaptain", "--help"
  end
end
