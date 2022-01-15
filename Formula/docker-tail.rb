class DockerTail < Formula
  desc 'Tail the logs of multiple docker containers with improved readability and colors.'
  homepage 'https://github.com/joemiller/docker-tail'
  url 'https://github.com/joemiller/docker-tail/archive/v0.1.0.tar.gz'
  sha256 '7171e2ef7f24d4bbc722cec781ffe62b8725106b259fcc6472c2ff07af817b7b'

  head 'https://github.com/joemiller/docker-tail.git'

  def install
    bin.install 'docker-tail'
  end

  test do
    system "#{bin}/docker-tail", '--version'
  end
end
