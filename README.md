# nixops-test

nixops create infra.nix -d infra

nixops deploy -d infra --create-only

nixops check -d infra
