{ ... }: {

  imports = [
    ./creds
    ./shell
    ./desktop
  ];

  programs.zed-editor.enable = true;
  programs.firefox.enable = true;

}
