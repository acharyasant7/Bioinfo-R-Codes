library(bio3d)

DotPlot <- function(seq1, seq2){
  if(length(seq2) > length(seq1))
    plot(0:length(seq2), 0: length(seq2), type = "n", xlab = "Chain A", ylab = "Chain B", main = "Dot Plot")
  else plot(0:length(seq1), 0: length(seq1),type = "n", xlab = "Chain A", ylab = "Chain B", main = "Dot Plot")
  
  DM <- array(dim = c(length(seq1), length(seq2)), 0)
  for (i in 1:length(seq1)) {
    for (j in 1: length(seq2)) {
      if (seq1[i] == seq2[j]) {
        DM[i,j] <- DM[i,j] +1
      
    if (DM[i,j] >=1 ) {
        points(i,j, pch = "*")
        
      }
        
      }
      
    }
    
  }
}

temp <- read.fasta("Chain A.fasta")
seq1 <- temp$ali
temp <- read.fasta("Chain B.fasta")
seq2 <- temp$ali
DotPlot(seq2, seq1)
