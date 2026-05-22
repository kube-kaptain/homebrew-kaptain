require_relative "../version"

class KaptainUserScripts < Formula
  desc "Kaptain user scripts - complete standalone package"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-#{version}.zip"
  sha256 "67d8fb6e4386f123555345dbc6b8ce0d01992e806a1da94ddb8330c5390995c2"
  license "MIT"

  depends_on "age"
  depends_on "openssl"

  resource "completion-bash" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.bash"
    sha256 "a06c077550b6298cf0f0d08aa56e8915c9d64195b9d5f6ecdb85dad5032b7554"
  end

  resource "completion-zsh" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.zsh"
    sha256 "0edc9cc05aac44d550abad718fb8be59fd2470ad0ca62f60f731747435c3dc9a"
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
