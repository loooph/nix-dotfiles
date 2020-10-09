{
  nixpkgs.config.packageoverrides = pkgs: { dwm = pkgs.dwm.override {
			conf = ./config.h;
			patches =	[
			];
		};
	};
}
