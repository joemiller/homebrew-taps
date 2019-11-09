# experimental formula for installing openssh with U2F (yubikey) support
# https://marc.info/?l=openssh-unix-dev&m=157259802529972&w=2

class OpensshU2f < Formula
  desc "openssh with u2f (yubikey) support"
  version "8.1p1_aa4c640"
  revision 1
  homepage "https://github.com/openssh/openssh-portable"
  url "https://github.com/openssh/openssh-portable/tarball/aa4c640" # HEAD of master branch, 2019/11/08
  sha256 "b2b405c6fbd8829086d25f50bec4a72819b2ef481c78839dbdd49aee7ecc26df"

  depends_on "ldns"
  depends_on "openssl@1.1"
  depends_on "pkg-config" => :build
  depends_on "autoconf" => :build
  depends_on "cmake" => :build

  resource "libcbor" do
    url "https://github.com/PJK/libcbor/archive/v0.5.0.tar.gz"
    sha256 "9bbec94bb385bad3cd2f65482e5d343ddb97e9ffe261123ea0faa3bfea51d320"
  end

  resource "libfido2" do
    url "https://github.com/Yubico/libfido2/tarball/96cff7d"
    sha256 "ac0be17842d477df7875153a966923fb29b368aceda5a0a5dd2bc3396c0e1ea7"
  end

  keg_only :versioned_formula, "this formula conflicts with openssh"

  def install
    resource("libcbor").stage do
      args = %W[
        -DCMAKE_INSTALL_PREFIX=#{prefix}
      ]
      system "cmake", ".", *args
      system "make"
      system "make", "install"
    end

    resource("libfido2").stage do
      ENV.prepend_path "PKG_CONFIG_PATH", "#{Formula["openssl@1.1"].opt_lib}/pkgconfig"
      ENV.prepend_path "PKG_CONFIG_PATH", "#{prefix}/lib/pkgconfig"
      args = %W[
        -DCMAKE_INSTALL_PREFIX=#{prefix}
      ]
      system "cmake", ".", *args
      system "make"
      system "make", "install"
    end

    # TODO: consider incorporating the same patches as the official homebrew openssh formula: https://github.com/Homebrew/homebrew-core/blob/47437a918aec92a08d5cfaa8ea0428b8c91b6ed2/Formula/openssh.rb
    args = %W[
      --prefix=#{prefix}
      --sysconfdir=#{etc}/ssh
      --with-ldns
      --with-libedit
      --with-kerberos5
      --with-pam
      --with-ssl-dir=#{Formula["openssl@1.1"].opt_prefix}
    ]
    system "autoreconf"
    system "./configure", *args
    system "make"
    system "make", "install"
  end

  def caveats; <<~EOS
    This formula is keg-only so it won't conflict with the system SSH or the official
    openssh from Homebrew.

    The binaries are installed in: #{opt_bin}

    Usage:

      - Create a new U2F key. You will need to tap the key to complete the setup.
        This will create a ~/.ssh/id_ecdsa_sk and ~/.ssh/id_ecdsa_sk.pub file.
        The private key is only a stub. The .pub key can be added to an authorized_keys
        file like any other public key:

         SSH_SK_PROVIDER=#{opt_lib}/libsk-libfido2.so #{opt_bin}/ssh-keygen -t ecdsa-sk

      - SSH to a server. The server must also support U2F:

         SSH_SK_PROVIDER=#{opt_lib}/libsk-libfido2.so #{opt_bin}/ssh <host>

      You can add "SecurityKeyProvider #{opt_lib}/libsk-libfido2.so" to your ~/.ssh/config
      file to avoid setting the SSH_SK_PROVIDER environment variable.
  EOS
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test openssh-u2f`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # TODO: implement a test
    system "true"
  end
end
