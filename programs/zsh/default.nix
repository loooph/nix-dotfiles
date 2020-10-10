{
	programs.zsh = {
		enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    history = {
      expireDuplicatesFirst = true;
      ignoreDups = true;
      save = 2000000;
      size = 2000000;
    };
    shellAliases = {
      "cat" = "bat";
      "grep" = "rg";
      "ls" = "lsd";
      "du" = "dust";
      "tree" = "lsd --tree";
    };
	};
}
