require_relative "../version"

class Kaptain < Formula
  desc "Meta package - installs all kaptain-* brew packages"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-42-#{version}.zip"
  sha256 "0abc8f03ae950a4dbb68f8fb45cf191b68b377ffd1d25b02167f2840a05518fd"
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
