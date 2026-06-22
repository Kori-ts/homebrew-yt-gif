class YtGif < Formula
  desc "Simple CLI tool for creating GIFs from YouTube videos"
  homepage "https://github.com/Kori-ts/yt-gif"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Kori-ts/yt-gif/releases/download/v1.0.0/yt-gif_1.0.0_darwin_amd64.tar.gz"
      sha256 "891f6cd6baacd2036918ce59b36e46aae5d081c1d4674258973179ca7e02eb88"
    end

    on_arm do
      url "https://github.com/Kori-ts/yt-gif/releases/download/v1.0.0/yt-gif_1.0.0_darwin_arm64.tar.gz"
      sha256 "04421e591fe4f416a72ad0ec9215fc1af5bdd51a288b65ba0f509d9c5cc7be78"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Kori-ts/yt-gif/releases/download/v1.0.0/yt-gif_1.0.0_linux_amd64.tar.gz"
      sha256 "50af4bfc67e284929f0dca1efa5e168798840d3e69c491377e86a8d581b86500"
    end

    on_arm do
      url "https://github.com/Kori-ts/yt-gif/releases/download/v1.0.0/yt-gif_1.0.0_linux_arm64.tar.gz"
      sha256 "7fffb758e44d4258e862071a0658bd3f547f4c594e51b275996f292dc0a783d6"
    end
  end

  depends_on "ffmpeg"
  depends_on "yt-dlp"

  def install
    bin.install "yt-gif"
  end

  test do
    assert_match "yt-gif is a simple CLI tool", shell_output("#{bin}/yt-gif --help")
  end
end
