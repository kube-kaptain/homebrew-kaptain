require_relative "../version"

class Kaptain < Formula
  desc "Meta package - installs all kaptain-* brew packages"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "2e46eb091234bc4f338a0e187d7eb3712fb4880c35324502fba8e324c970cca9"
  license "MIT"

  depends_on "kaptain-cli"
  depends_on "kaptain-encryption"

  def install
    # Meta package - dependencies provide all functionality
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/kaptain", "--help"
  end
end
