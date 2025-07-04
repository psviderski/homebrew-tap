class DockerPussh < Formula
  desc "Docker CLI plugin to push images to remote Docker daemons via SSH"
  homepage "https://github.com/psviderski/unregistry"
  url "https://github.com/psviderski/unregistry/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0266b26b824a6e301996f03f5cfb87f91c61b42b6acb7e8a0c869b87990c5d7f"
  license "Apache-2.0"
  version "0.1.1"

  head "https://github.com/psviderski/unregistry.git", branch: "main"

  def install
    bin.install "docker-pussh"
    # The install section runs in a sandbox so we can't create a symlink in user's home directory.
    # Prompt to create a symlink in Docker CLI plugins directory in caveats.
  end

  def caveats
    <<~EOS
      To use docker-pussh as a Docker CLI plugin ('docker pussh' command) you need to create a symlink:

        mkdir -p ~/.docker/cli-plugins
        ln -sf #{opt_bin}/docker-pussh ~/.docker/cli-plugins/docker-pussh

      After installation, you can use it with:
        docker pussh [OPTIONS] IMAGE[:TAG] [USER@]HOST[:PORT]

      To uninstall the plugin:
        rm ~/.docker/cli-plugins/docker-pussh
    EOS
  end

  test do
    # Test the command output with no arguments.
    assert_match "IMAGE and HOST are required", shell_output("#{bin}/docker-pussh 2>&1", 1)
  end
end
