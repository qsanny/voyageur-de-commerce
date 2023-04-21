# Prefix of the current opam switch
if ( ! ${?OPAM_SWITCH_PREFIX} ) setenv OPAM_SWITCH_PREFIX ""
setenv OPAM_SWITCH_PREFIX '/home/runner/OCaml/.opam/default'
# Updated by package ocaml
if ( ! ${?CAML_LD_LIBRARY_PATH} ) setenv CAML_LD_LIBRARY_PATH ""
setenv CAML_LD_LIBRARY_PATH '/nix/store/b53f0332zyzqsdp275807h07wvn5yb2b-ocaml-4.14.0/lib/ocaml/stublibs:/nix/store/b53f0332zyzqsdp275807h07wvn5yb2b-ocaml-4.14.0/lib/ocaml'
# Updated by package ocaml
if ( ! ${?CAML_LD_LIBRARY_PATH} ) setenv CAML_LD_LIBRARY_PATH ""
setenv CAML_LD_LIBRARY_PATH '/home/runner/OCaml/.opam/default/lib/stublibs':"$CAML_LD_LIBRARY_PATH"
# Updated by package ocaml
if ( ! ${?OCAML_TOPLEVEL_PATH} ) setenv OCAML_TOPLEVEL_PATH ""
setenv OCAML_TOPLEVEL_PATH '/home/runner/OCaml/.opam/default/lib/toplevel'
# Current opam switch man dir
if ( ! ${?MANPATH} ) setenv MANPATH ""
setenv MANPATH "$MANPATH":'/home/runner/OCaml/.opam/default/man'
# Binary dir for opam switch default
if ( ! ${?PATH} ) setenv PATH ""
setenv PATH '/home/runner/OCaml/.opam/default/bin':"$PATH"
