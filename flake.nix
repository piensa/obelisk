{
  description = "Obelisk flake";

  outputs = { self}: 
    let
      ob = import ./default.nix { system = "x86_64-linux"; };
    in
      {
    packages.x86_64-linux.ob = ob.command;

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.ob;

  };
}
