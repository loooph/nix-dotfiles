{
  environment.pathsToLink = [ "/share/zsh" ];
	programs.zsh = {
		enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    history = {
      expireDuplicatesFirst = true;
      ignoreDups = true;
      save = 2000000;
      size = save;
    };
    loginExtra = ''
			eval "$(starship init zsh)"
		'';
    shellAliases = {
      "cat" = "bat";
      "grep" = "rg";
      "ls" = "lsd";
      "du" = "dust";
      "tree" = "lsd --tree";
    };
	};
}
