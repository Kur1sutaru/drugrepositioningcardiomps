# Match the gene and drug list with the cmap data
#Dilated x non dilated aorta gene - drugs
GSE30657mpsviidilatedvsnondilatedaorta$gene<-toupper(GSE30657mpsviidilatedvsnondilatedaorta$gene)
dilatedxnondilateddrugs <- merge(cmapdata, GSE30657mpsviidilatedvsnondilatedaorta, by.x = "Target", by.y = "gene" )
write.csv(dilatedxnondilateddrugs, "dilatedxnondilateddrugs.csv")

#Dilated aorta x control gene - drugs
GSE30657normalvsdilatedaorta$gene<-toupper(GSE30657normalvsdilatedaorta$gene)
dilatedxnormalaortadrugs<- merge(cmapdata, GSE30657normalvsdilatedaorta, by.x = "Target", by.y = "gene" )
write.csv(dilatedxnormalaortadrugs, "dilatedxnormalaortadrugs.csv")

# genes related to the immune pathways
genesimmunepathways$genes<-toupper(genesimmunepathways$genes)
immunegenesdrugs<- merge(cmapdata, genesimmunepathways, by.x = "Target", by.y = "genes" )
write.csv(immunegenesdrugs, "immunepathwaysgenedrugs.csv")



