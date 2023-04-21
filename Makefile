all: run test
run:
	ocaml recuit.ml data1.ml
test:
	ocaml recuit.ml data2.ml
clean:
	rm -rf out.txt
