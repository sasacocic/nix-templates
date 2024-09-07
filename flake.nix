{
    description = "Sasa's flake templates";



    outputs = { self, ... }: {
	
	templates = {
	    python = {
		path = ./py-template;
		description = "A simple python project setup with poetry";
	    }
	}
    };
}




