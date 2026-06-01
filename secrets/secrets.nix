let
  local = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAIF13DzjHLHgjybbCH+twWjMOQjeFdFew8PhhAPIW91";
in
{
  "kagi.age".publicKeys = [ local ];
}
