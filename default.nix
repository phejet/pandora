{ stdenv, cmake, ninja, lib, gcc }:

stdenv.mkDerivation rec {
  pname = "mylib";
  version = "1.0.0";

  src = ./.;

  nativeBuildInputs = [ cmake ninja ];

  # installPhase = ''
  #   mkdir -p $out/lib $out/include/mylib
  #   cp libmylib.a $out/lib/
  #   cp -r ${src}/include/mylib/* $out/include/mylib/
  # '';

  meta = with lib; {
    description = "My C++ static library";
    license = licenses.mit;
    platforms = platforms.unix;
  };
}
