class HelloWorld < Formula
  desc "desc"
  homepage "https://github.com/rymach/helloworld"
#   version "v9.0.0"

  on_macos do
    url "https://github.com/rymach/hello-world/archive/refs/tags/v9.0.3.zip"
    sha256 "863a146189803c6f78af6db61e79904e6e63dad13ad720209493db5727fc0474"
  end
#   on_linux do
#     url "https://github.com/int128/kubelogin/releases/download/v1.24.0/kubelogin_linux_amd64.zip"
#     sha256 "658499b338b8cee7c622130d68405a55b4c4051ba43f7c841cb3f3d9364b3292"
#   end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, #{ENV["USER"]}!\nVersion #{version}\n"
  end
end