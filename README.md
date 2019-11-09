joemiller/homebrew-taps
=======================

[Homebrew](http://brew.sh) (OSX) Taps for installing various packages.


Available packages ("Formula")
------------------------------

- [creds](https://github.com/joemiller/creds): Simple encrypted credential file management with GPG.
- [docker-tail](https://github.com/joemiller/docker-tail): Tail the logs of multiple docker containers
  with improved readability and colors.
- [vault-gpg-token-helper](https://github.com/joemiller/vault-gpg-token-helper): A @hashicorp Vault token helper for GPG (+ yubikey)
- [openssh-u2f](https://marc.info/?l=openssh-unix-dev&m=157259802529972&w=2): Experimental keg-only formula for OpenSSH built with U2F (yubikey) support
  - For a U2F compatible OpenSSH server for testing see: https://hub.docker.com/r/joemiller/openssh-u2f

Usage
-----

All taps are in the `Formula` subdirectory and can be installed via:

```
$ brew install joemiller/taps/<formula-name>
```

Or:

```
$ brew tap joemiller/taps
$ brew install <formula-name>
```
