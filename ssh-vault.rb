class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://bintray.com/nbari/ssh-vault/download_file?file_path=ssh-vault_0.8.0_darwin_amd64.zip"
  sha256 "d41781261b13cc1176c974a2395d7888e0f83b51b3ea4fbe1cd1f5ee1da9c637"
  version "0.8.0"

  def install
    bin.install "ssh-vault"
  end
end
