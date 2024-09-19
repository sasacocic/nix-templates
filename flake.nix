{
  description = "Sasa's flake templates";

  outputs = { self, ... }: {

    templates = {
      python-basic = {
        path = ./py-template;
        description = "A simple python project setup with poetry";
      };
      c-basic = {
        path = ./c;
        description = "C hello world program";
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




