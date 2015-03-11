class Libcrippy < Formula
  homepage ""
  url "https://github.com/Hexxeh/libcrippy.git", :using => :git, :revision => "8f4fea2"
  version "1"

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
