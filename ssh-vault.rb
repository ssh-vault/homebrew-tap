class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://bintray.com/nbari/ssh-vault/download_file?file_path=ssh-vault_0.7.2_darwin_amd64.zip"
  sha256 "5c875bdf99c7ebd6b5a8e2d1fa1ec69647e7fa01f775b1e118829014476cc876"
  version "0.7.3"

  def install
    bin.install "ssh-vault"
  end
end
