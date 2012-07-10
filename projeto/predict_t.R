
#script R para testar elementos fora dos cluster
#o script imprime em qual cluster o teste se encaixa
#ie identifica a face da pessoa
require(clue)
images = c("t1.pgm","t2.pgm","t3.pgm","t4.pgm","t5.pgm","t6.pgm","t7.pgm","t8.pgm","t9.pgm","t10.pgm","t11.pgm","t12.pgm","t13.pgm","t14.pgm","t15.pgm","t16.pgm","t17.pgm","t18.pgm","t19.pgm","t20.pgm")
for (i in 1:length(images)){
	
	teste1 = getChannels(read.pnm(images[i]), colors= c("green"))
	teste1 <- array(teste1,10304)
	teste1 <- matrix(teste1,1,10304)

	id1 = cl_predict(cl, teste1)
	print(paste("teste ", i, "grupo ",id1))


}


