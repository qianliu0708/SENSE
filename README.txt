This software implements the semantic structure-base word embedding method proposed in the AAAI-2018 submission titled "Semantic Structure-based Word Embedding by Incorporating Concept Convergence and Word Divergence".
------------------------------------------------------
Installation
type make

Example
The examples of concept convergence and word divergence are provided in lowlevel.txt and samelevel.txt, respectively. To run this type

time ./sense -train corpus.txt -output outtest.txt -cbow 1  -size 300 -negative 25 -hs 1 -sample 1e-4 -threads 20 -binary 0 -iter 15 -samelevelfile samelevel.txt -samecom 0.8 -lowlevelfile lowlevel.txt -lowcom 0.003

Here,
-train is the training corpus
-output is the output word embedding file
-lowlevelfile is the file for concept convergene from KBs, For instance, one line in the file: trainer animal_trainer coach 
-lowcom is the paremeter alpha in the paper. It controls the influence of concept convergence.
-samelevelfile is the file for word divergence generated from KBs. For instance, one line in the file: coach baseball_coach basketball_coach conditioner football_coach hockey_coach tennis_coach
-samecom is the parameter beta in the paper. It controls the influence of word divergence.
The learnt word embedding will be written to outtest.txt, specified by -output.
