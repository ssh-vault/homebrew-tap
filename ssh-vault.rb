class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://bintray.com/nbari/ssh-vault/download_file?file_path=ssh-vault_0.7.4_darwin_amd64.zip"
  sha256 "8b8fe5c40d79837aeacb759fc257187d479dff02155c3fe52d73515d78d1c076"
  version "0.7.4"

  def install
    bin.install "ssh-vault"
  end
end
