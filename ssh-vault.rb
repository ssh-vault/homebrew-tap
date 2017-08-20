require "language/go"

class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://github.com/ssh-vault/ssh-vault.git",
      :tag => "0.11.3",
      :revision => "684ad4b94f789104fa2735222871bfe673eb605a"

  head "https://github.com/ssh-vault/ssh-vault.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "179e07bb22e2755e3d082f07607cf2e98e266defaace3ceb764a4c32f03ccf8d" => :sierra
    sha256 "5be8ef01a8568b7de75b19d525a4830b0c934c43b9e8f9fb150cbdcb18091a26" => :el_capitan
    sha256 "6dcf9d7de2489f5e3d6fd56488c3abe2bff1ea6f6bf0d9de89421b0e9a7e2e38" => :yosemite
  end

  depends_on "go" => :build

  go_resource "golang.org/x/crypto" do
    url "https://go.googlesource.com/crypto.git",
        :revision => "eb71ad9bd329b5ac0fd0148dd99bd62e8be8e035"
  end

  go_resource "golang.org/x/sys" do
    url "https://go.googlesource.com/sys.git",
        :revision => "43e60d72a8e2bd92ee98319ba9a384a0e9837c08"
  end

  go_resource "github.com/kr/pty" do
    url "https://github.com/kr/pty.git",
        :revision => "2c10821df3c3cf905230d078702dfbe9404c9b23"
  end

  go_resource "github.com/ssh-vault/go-keychain" do
    url "https://github.com/ssh-vault/go-keychain.git",
        :revision => "69c518e5bfff89ad62db81a185634d3aeac3c453"
  end

  go_resource "github.com/ssh-vault/crypto" do
    url "https://github.com/ssh-vault/crypto.git",
        :revision => "ae180e0dba4c4b9516c202881bc333472c39c0d1"
  end

  go_resource "github.com/ssh-vault/ssh2pem" do
    url "https://github.com/ssh-vault/ssh2pem.git",
        :revision => "02e6a0142e2ba52a22dc41a20a3227c5c76e99f2"
  end

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/ssh-vault/ssh-vault").install buildpath.children
    Language::Go.stage_deps resources, buildpath/"src"
    cd "src/github.com/ssh-vault/ssh-vault" do
      ldflags = "-s -w -X main.version=#{version}"
      system "go", "build", "-ldflags", ldflags, "-o", "#{bin}/ssh-vault", "cmd/ssh-vault/main.go"
    end
  end

  test do
    system bin/"ssh-vault", "-v"
  end
end
