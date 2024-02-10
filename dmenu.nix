fixedPoint: pkgs: {
  dmenu = pkgs.dmenu.overrideAttrs (oldAttrs: rec {
    src = pkgs.fetchgit {
      url = "https://github.com/piq9117/dmenu.git";
      sha256 = "1vwjjis5ypmvidp41qzpzwr80lr78wp5kr7x0j64q91gznzsr2vl";
    };
    # patches = [./patches/dmenu.patch];
  });
}
