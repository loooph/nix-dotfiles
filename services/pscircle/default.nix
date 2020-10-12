{pkgs,...}:
{
  # TODO create home-manager option file for pscircle
  home.packages = with pkgs; [
    pscircle
  ];

  xsession.initExtra = ''
    while true; do
      pscircle --root-pid=1 --collapse-threads=1 --tree-radius-increment=90 --output=/dev/stdout | feh --bg-fill -;
      sleep 2;
    done &
  '';
}
