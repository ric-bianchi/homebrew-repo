class Coin < Formula
  desc "The Coin implementation of the Open Inventor API"
  homepage "https://grey.colorado.edu/coin3d/index.html"
  url "https://www.qat.pitt.edu/Coin-4.0.0a.tar.gz"
  sha256 "4ce5954af6e340281cf77bedae2d654f673829df0bb1e18a8f973341382db435"
  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--disable-framework",
                          "--prefix=#{prefix}"
    system "make", "install" 
  end
end