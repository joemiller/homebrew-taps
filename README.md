joemiller/homebrew-taps
=======================

[Homebrew](http://brew.sh) (OSX) Taps for installing various packages.


Available packages ("Formula")
------------------------------

- [creds](https://github.com/joemiller/creds): Simple encrypted credential file management with GPG.
- [docker-tail](https://github.com/joemiller/docker-tail): Tail the logs of multiple docker containers
  with improved readability and colors.
 - [vault-gpg-token-helper](https://github.com/joemiller/vault-gpg-token-helper): A @hashicorp Vault token helper for GPG (+ yubikey)

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
