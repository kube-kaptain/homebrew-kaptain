require_relative "../version"

class Kaptain < Formula
  desc "Meta package - installs all kaptain-* brew packages"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-42-#{version}.zip"
  sha256 "2f0fb38301e1324f265d397efbe6bf65da3a0846f50b745c195094bc0ace37f3"
  license "MIT"

  depends_on "kaptain-cli"
  depends_on "kaptain-encryption"

  def install
    bin.install "kaptain-42"
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/kaptain", "--help"
  end
end
