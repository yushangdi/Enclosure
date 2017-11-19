test:
	ocamlbuild -use-ocamlfind state_test.byte && ./state_test.byte

compile:
	ocamlbuild -use-ocamlfind state_test.byte

cai:
		ocamlbuild -use-ocamlfind ai_test.byte
check:
	bash checkenv.sh && bash checktypes.sh

zip:
	zip a4src.zip *.ml*

zipcheck:
	bash checkzip.sh

clean:
	ocamlbuild -clean
	rm -f a4src.zip
