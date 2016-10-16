class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://bintray.com/nbari/ssh-vault/download_file?file_path=ssh-vault_0.6.0_darwin_amd64.zip"
  sha256 "e3e4219573649f28871552db353f30dd036d0f2c57dd63eb994d4dde0115e460"
  version "64"

  def install
    bin.install "ssh-vault"
  end
end
