require "language/go"

class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://github.com/ssh-vault/ssh-vault.git",
      :tag => "0.12.2",
      :revision => "39c919577ab522293750d1c01174a8b5b9871aae"

  head "https://github.com/ssh-vault/ssh-vault.git"

  depends_on "go" => :build

  go_resource "golang.org/golang/dep" do
      url "https://github.com/golang/dep.git",
        :revision => "418356b62913b5068cb2b6131889518e0a5e5bd6"
  end

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/ssh-vault/ssh-vault").install buildpath.children
    Language::Go.stage_deps resources, buildpath/"src"

    cd "src/github.com/golang/dep" do
        system "go", "install", ".../cmd/dep"
    end

    cd "src/github.com/ssh-vault/ssh-vault" do
      system buildpath/"bin/dep", "ensure"
      ldflags = "-s -w -X main.version=#{version}"
      system "go", "build", "-ldflags", ldflags, "-o", "#{bin}/ssh-vault", "cmd/ssh-vault/main.go"
    end
  end

  test do
    system bin/"ssh-vault", "-v"
  end
end
