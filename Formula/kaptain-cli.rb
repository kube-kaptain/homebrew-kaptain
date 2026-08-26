require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "98ccc029b94d7628de2d370d551280ed90dbee533f94ef5ccb626fc76e88e182"
  license "MIT"

  resource "completion-bash" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.bash"
    sha256 "8f2ce0c3bc5fcaec9f0c3e9a0774e2ab4c5ec7eb4430abe15c0ee509ce287208"
  end

  resource "completion-zsh" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.zsh"
    sha256 "e9db55b8bfe6d47bb06a2ff937feabc2d11c1ad3345465cce26eeea1d3aba121"
  end

  def install
    bin.install "kaptain"
    bin.install "kaptain-list"
    bin.install "kaptain-help"
    bin.install "kaptain-clean"
    bin.install "kaptain-setup"

    resource("completion-bash").stage do
      bash_completion.install "kaptain-completion-#{version}.bash" => "kaptain"
    end

    resource("completion-zsh").stage do
      zsh_completion.install "kaptain-completion-#{version}.zsh" => "_kaptain"
    end
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
