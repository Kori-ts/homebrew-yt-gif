class YtGif < Formula
  desc "Simple CLI tool for creating GIFs from YouTube videos"
  homepage "https://github.com/Kori-ts/yt-gif"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Kori-ts/yt-gif/releases/download/v1.0.1/yt-gif_1.0.1_darwin_amd64.tar.gz"
      sha256 "245bf51218c74b014a24ac82d89ea51316a6551b18d6c3feddc32156a343ecc3"
    end

    on_arm do
      url "https://github.com/Kori-ts/yt-gif/releases/download/v1.0.1/yt-gif_1.0.1_darwin_arm64.tar.gz"
      sha256 "fe05d248663cd3c21e6c77b59450468adbd643588e48e67279f3a40c766cf167"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Kori-ts/yt-gif/releases/download/v1.0.1/yt-gif_1.0.1_linux_amd64.tar.gz"
      sha256 "156278512884d2e2e2df9b3d30b3f5f0bf51a76f2e07efa170658a5a0a6fd675"
    end

    on_arm do
      url "https://github.com/Kori-ts/yt-gif/releases/download/v1.0.1/yt-gif_1.0.1_linux_arm64.tar.gz"
      sha256 "f8dc3853753fff9df815efadbefefc7c880162b8843ab7858ad023fb29b2fa21"
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
