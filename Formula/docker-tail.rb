class DockerTail < Formula
  desc 'Tail the logs of multiple docker containers with improved readability and colors.'
  homepage 'https://github.com/joemiller/docker-tail'
  url 'https://github.com/joemiller/docker-tail/archive/v0.1.0.tar.gz'
  sha256 'df3a3d73cadf06c37a9a4295cb682028d52459d0f99e2be87c7451ee74633d56'

	head 'https://github.com/joemiller/docker-tail.git'

  bottle :unneeded

  def install
    bin.install 'docker-tail'
  end

  test do
    system "#{bin}/docker-tail", '--version'
  end
end
