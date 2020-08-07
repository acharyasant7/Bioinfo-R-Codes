library(Biostrings)

seq1 <- DNAString("ATGCTATCGATAGCTAGACTAAGCATACAG")
seq2 <- DNAString("GCTACTACGACAT")

pairwiseAlignment(seq2, seq1, type = "local", 
                  substitutionMatrix = nucleotideSubstitutionMatrix(5,-3), gapOpening = 0,
                  gapExtension = -2)

pairwiseAlignment(seq2, seq1, type = "global", 
                  substitutionMatrix = nucleotideSubstitutionMatrix(5,-3), gapOpening = 0,
                  gapExtension = -2)