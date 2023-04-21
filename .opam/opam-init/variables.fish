# Prefix of the current opam switch
set -gx OPAM_SWITCH_PREFIX '/home/runner/OCaml/.opam/default';
# Updated by package ocaml
set -gx CAML_LD_LIBRARY_PATH '/nix/store/b53f0332zyzqsdp275807h07wvn5yb2b-ocaml-4.14.0/lib/ocaml/stublibs:/nix/store/b53f0332zyzqsdp275807h07wvn5yb2b-ocaml-4.14.0/lib/ocaml';
# Updated by package ocaml
set -gx CAML_LD_LIBRARY_PATH '/home/runner/OCaml/.opam/default/lib/stublibs':"$CAML_LD_LIBRARY_PATH";
# Updated by package ocaml
set -gx OCAML_TOPLEVEL_PATH '/home/runner/OCaml/.opam/default/lib/toplevel';
# Current opam switch man dir
if [ (count $MANPATH) -gt 0 ]; set -gx MANPATH $MANPATH '/home/runner/OCaml/.opam/default/man'; end;
# Binary dir for opam switch default
set -gx PATH '/home/runner/OCaml/.opam/default/bin' $PATH;
