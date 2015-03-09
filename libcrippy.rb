class Libcrippy < Formula
  homepage ""
  url "https://github.com/Hexxeh/libcrippy/archive/8f4fea274a7e644daae62cdf50e77d565837778b.zip"
  version "1"
  sha1 "c56cc62edcceb5ddbfe186ac0a22c2f1ce0672ea"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "libplist" => :build

  def install
    system "sh autogen.sh"
    system "./configure --prefix=#{prefix}"
    system "make install"
  end
end
