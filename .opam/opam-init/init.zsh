if [[ -o interactive ]]; then
  [[ ! -r /home/runner/OCaml/.opam/opam-init/complete.zsh ]] || source /home/runner/OCaml/.opam/opam-init/complete.zsh  > /dev/null 2> /dev/null

  [[ ! -r /home/runner/OCaml/.opam/opam-init/env_hook.zsh ]] || source /home/runner/OCaml/.opam/opam-init/env_hook.zsh  > /dev/null 2> /dev/null
fi

[[ ! -r /home/runner/OCaml/.opam/opam-init/variables.sh ]] || source /home/runner/OCaml/.opam/opam-init/variables.sh  > /dev/null 2> /dev/null
