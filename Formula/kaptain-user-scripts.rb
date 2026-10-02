require_relative "../version"

class KaptainUserScripts < Formula
  desc "Kaptain user scripts - complete standalone package"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-#{version}.zip"
  sha256 "f34595dd2a6d3177683308e0f5b671c0766dd364bf78d8d5f719d74b65a707d2"
  license "MIT"

  depends_on "age"
  depends_on "openssl"

  resource "completion-bash" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.bash"
    sha256 "b3edb5c953d9b10c875c6ae092e895abffa635b26f238b37aa24aa6605de4dfa"
  end

  resource "completion-zsh" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.zsh"
    sha256 "40b28685e530169c96a7375e483cb5b875ae2061ea13999f010d7bbc13753cf9"
  end

  def install
    bin.install "kaptain"
    bin.install Dir["kaptain-*"]

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
