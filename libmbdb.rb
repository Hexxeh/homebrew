class Libmbdb < Formula
  homepage ""
  url "https://github.com/Hexxeh/libmbdb/archive/5996ec53efccb499593ab2e1ab8dfde8ec914b6d.zip"
  version "1"
  sha1 "5f47958463af10c6d6924a8e7671484f83b09b5a"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "openssl" => :build
  depends_on "libcrippy" => :build

  def install
    system "sh autogen.sh"
    system "./configure --prefix=#{prefix}"
    system "make install"
  end
end
