{
  description = "Sasa's flake templates";

  outputs =
    { self, ... }:
    {

      templates = {
        python = {
          path = ./python;
          description = "A simple python project setup with poetry";
        };
        c = {
          path = ./c;
          description = "C hello world program";
        };
        cpp = {
          path = ./cpp;
          description = "CPP hello world";
        };
        go = {
          path = ./go;
          description = "Go hello world";
        };
        bootstrap = {
          path = ./bootstrap;
          description = "boilerplate for a new template";
        };
      };
    };
}
