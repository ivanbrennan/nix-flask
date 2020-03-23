with (import (builtins.fetchTarball {
  url = "https://github.com/NixOS/nixpkgs/archive/8746c77a383f5c76153c7a181f3616d273acfa2a.tar.gz";
}) { });

( python37.withPackages (ps: with ps; [ flask flask-restful ]) ).env
