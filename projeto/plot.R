
#script R para plotar centroides 
for (i in 1:10){

	projecao <- array(cl$centers[i,1:10304],10304)
	m_projecao <- matrix ( projecao, 112,92)
	projecao_pgm <- pixmapGrey(m_projecao)
	jpeg(paste("zcenter",i,"plot.jpg"))
	plot(projecao_pgm)
	dev.off()	
}
