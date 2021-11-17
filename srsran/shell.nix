let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  nativeBuildInputs = with pkgs; [ cmake gcc pkg-config ];
  buildInputs = with pkgs; [ uhd
                             clang-tools
                             zeromq
                             fftwFloat.dev
                             mbedtls
                             boost
                             libconfig
                             lksctp-tools
                           ];
}
