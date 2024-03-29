library(Biostrings)
library(ape)
library(seqinr)

homo_sapiens <- read.GenBank("NM_003381.4", as.character = "TRUE")
pongo_abelii <- read.GenBank("XM_024248829.1", as.character = "TRUE")
equus_caballus <- read.GenBank("XM_023633005.1", as.character = "TRUE")
lutra_lutra <- read.GenBank("XM_047733983.1", as.character = "TRUE")
cavia_porcellus <- read.GenBank("XM_005003122.3", as.character = "TRUE")

homo_sapiens_seq = paste(homo_sapiens, collapse="")
pongo_abelii_seq = paste(pongo_abelii, collapse="")
equus_caballus_seq = paste(equus_caballus, collapse="")
lutra_lutra_seq = paste(lutra_lutra, collapse="")
cavia_porcellus_seq = paste(cavia_porcellus, collapse="")

homo_sapiens_pongo_abeli_global<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=pongo_abelii_seq, type="global")
homo_sapiens_pongo_abeli_local<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=pongo_abelii_seq, type="local")

homo_sapiens_equus_caballus_global<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=equus_caballus_seq, type="global")
homo_sapiens_equus_caballus_local<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=equus_caballus_seq, type="local")

homo_sapiens_lutra_lutra_global<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=lutra_lutra_seq, type="global")
homo_sapiens_lutra_lutra_local<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=lutra_lutra_seq, type="local")

homo_sapiens_cavia_porcellus_global<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=cavia_porcellus_seq, type="global")
homo_sapiens_cavia_porcellus_local<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=cavia_porcellus_seq, type="local")

---

homo_sapiens_pongo_abeli_global_score<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=pongo_abelii_seq, type="global",scoreOnly=TRUE)
homo_sapiens_pongo_abeli_local_score<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=pongo_abelii_seq, type="local",scoreOnly=TRUE)

homo_sapiens_equus_caballus_global_score<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=equus_caballus_seq, type="global",scoreOnly=TRUE)
homo_sapiens_equus_caballus_local_score<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=equus_caballus_seq, type="local",scoreOnly=TRUE)

homo_sapiens_lutra_lutra_global_score<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=lutra_lutra_seq, type="global",scoreOnly=TRUE)
homo_sapiens_lutra_lutra_local_score<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=lutra_lutra_seq, type="local",scoreOnly=TRUE)

homo_sapiens_cavia_porcellus_global_score<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=cavia_porcellus_seq, type="global",scoreOnly=TRUE)
homo_sapiens_cavia_porcellus_local_score<-pairwiseAlignment(pattern=homo_sapiens_seq, subject=cavia_porcellus_seq, type="local",scoreOnly=TRUE)
