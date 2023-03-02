{
  description = "Nix flake templates by @cor";

  outputs = _: {
    templates = {
      rust = {
        description =
          "Rust flake template with `rust-analyzer`, `clippy`, and `bacon`. Built using `flake-parts` and `rust-overlay`.";
        path = ./rust;
        welcomeText = ''
            # Rust flake template

            Getting started
            
            ## Enter a Rust devshell 
            
            ```bash
            nix develop
            ``` 

            ## Init and build your project with Cargo

            ```bash
            cargo init
            cargo build
            ```

            ## Build your project with nix

            ```bash
            nix build
            ```
        '';
      };

      svelte = {
        description =
          "Svelte flake template with `svelte-server`. Built using `flake-parts`.";
        path = ./svelte;
        welcomeText = ''
            # Svelte flake template

            ## Initializing your project
            This assumes that you added this template to an empty directory.

            You will need to run the following commands once in order to create your Svelte app:

            ```bash
            nix develop
            npm create svelte@latest .
            yarn 
            echo "result" >> .gitignore
            yarn add -D @sveltejs/adapter-node
            ```

            Then, open the file `svelte.config.js`, and change the first line from:

            ```javascript
            import adapter from '@sveltejs/adapter-auto';
            ```

            to
            
            ```javascript
            import adapter from '@sveltejs/adapter-node';
            ```

            (If this doesn't work, check the [adapter-node docs](https://kit.svelte.dev/docs/adapter-node)).

            Finally, 


            ```bash
            git init
            git add -A
            git commit -m "init"
            ```

            You can now build and run your Svelte project with Nix!

            ```bash
            nix run
            ```
            
            ## Enter a Svelte devshell 
            
            ```bash
            nix develop
            ``` 

            ## Build your project with Nix

            ```bash
            nix build
            ```
        '';
      };
    };
  };
}
