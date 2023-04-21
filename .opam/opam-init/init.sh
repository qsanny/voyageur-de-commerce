if [ -t 0 ]; then
  test -r /home/runner/OCaml/.opam/opam-init/complete.sh && . /home/runner/OCaml/.opam/opam-init/complete.sh > /dev/null 2> /dev/null || true

  test -r /home/runner/OCaml/.opam/opam-init/env_hook.sh && . /home/runner/OCaml/.opam/opam-init/env_hook.sh > /dev/null 2> /dev/null || true
fi

test -r /home/runner/OCaml/.opam/opam-init/variables.sh && . /home/runner/OCaml/.opam/opam-init/variables.sh > /dev/null 2> /dev/null || true
