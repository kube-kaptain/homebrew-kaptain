require_relative "../version"

class Kaptain < Formula
  desc "Meta package - installs all kaptain-* brew packages"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-42-#{version}.zip"
  sha256 "d30335db6b485ff9d9717c3a6599576440f9fd4e7e0cf806ca869425189cfecd"
  license "MIT"

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
