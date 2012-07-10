#k-means para conjunto de imagens de faces
require(pixmap)
n <-80
max <- 824320
#para filtro smooth os arquivos comecam com s, ex s1.pgm
#para laplace com l , ex l1.pgm
#morfologico m, ex m1.pgm
#sem filtragem os arquivos sao 1.pgm, 2.pgm ... 
images = c("l1.pgm","l2.pgm","l3.pgm","l4.pgm","l5.pgm","l6.pgm","l7.pgm","l8.pgm","l9.pgm","l10.pgm","l11.pgm","l12.pgm","l13.pgm","l14.pgm","l15.pgm","l16.pgm","l17.pgm","l18.pgm","l19.pgm","l20.pgm","l21.pgm","l22.pgm","l23.pgm","l24.pgm","l25.pgm","l26.pgm","l27.pgm","l28.pgm","l29.pgm","l30.pgm","l31.pgm","l32.pgm","l33.pgm","l34.pgm","l35.pgm","l36.pgm","l37.pgm","l38.pgm","l39.pgm","l40.pgm","l41.pgm","l42.pgm","l43.pgm","l44.pgm","l45.pgm","l46.pgm","l47.pgm","l48.pgm","l49.pgm","l50.pgm","l51.pgm","l52.pgm","l53.pgm","l54.pgm","l55.pgm","l56.pgm","l57.pgm","l58.pgm","l59.pgm","l60.pgm","l61.pgm","l62.pgm","l63.pgm","l64.pgm","l65.pgm","l66.pgm","l67.pgm","l68.pgm","l69.pgm","l70.pgm","l71.pgm","l72.pgm","l73.pgm","l74.pgm","l75.pgm","l76.pgm","l77.pgm","l78.pgm","l79.pgm","l80.pgm")

data = array(1,max)

dim(data) <- c(n,10304)

#pega as imagens 
for (i in 1:length(images)){
	img = getChannels(read.pnm(images[i]), colors = c("green"))
	data[i,] = img	
}

cl <- kmeans(data, 20, nstart = 20)



#facilitar a organizacao por grupos 
images2 = c("1.pgm","2.pgm","3.pgm","4.pgm","5.pgm","6.pgm","7.pgm","8.pgm","9.pgm","10.pgm","11.pgm","12.pgm","13.pgm","14.pgm","15.pgm","16.pgm","17.pgm","18.pgm","19.pgm","20.pgm","21.pgm","22.pgm","23.pgm","24.pgm","25.pgm","26.pgm","27.pgm","28.pgm","29.pgm","30.pgm","31.pgm","32.pgm","33.pgm","34.pgm","35.pgm","36.pgm","37.pgm","38.pgm","39.pgm","40.pgm","41.pgm","42.pgm","43.pgm","44.pgm","45.pgm","46.pgm","47.pgm","48.pgm","49.pgm","50.pgm","51.pgm","52.pgm","53.pgm","54.pgm","55.pgm","56.pgm","57.pgm","58.pgm","59.pgm","60.pgm","61.pgm","62.pgm","63.pgm","64.pgm","65.pgm","66.pgm","67.pgm","68.pgm","69.pgm","70.pgm","71.pgm","72.pgm","73.pgm","74.pgm","75.pgm","76.pgm","77.pgm","78.pgm","79.pgm","80.pgm")

for (j in 1:length(images)){
	imgpgm = read.pnm(images2[j])
	
	jpeg(paste(cl$cluster[j], j ,"out2.jpg"))
	plot(imgpgm)	
	dev.off()
}

