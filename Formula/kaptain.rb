require_relative "../version"

class Kaptain < Formula
  desc "Meta package - installs all kaptain-* brew packages"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-42-#{version}.zip"
  sha256 "8b3a78f12b8a5f84baddbeb2f4c06bd171e3dc377032408c9243eaf114beedb8"
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
