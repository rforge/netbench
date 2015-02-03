## ----main_benchmark------------------------------------------------------
    library(netbenchmark)
    top20.aupr <- netbenchmark(methods="all",datasources.names = "Toy",
                               local.noise=20,global.noise=10,
                               noiseType=c("normal","lognormal"),
                               datasets.num = 2,experiments = 40,
                               seed=1422976420)

## ----noise_study---------------------------------------------------------
    noise.aupr <- noise.bench(methods="all",local.noise=seq(0,100,l=3),
                              datasources.names = "Toy",datasets.num=2,
                              experiments = 40,seed=2629)

## ----experiments_study---------------------------------------------------
    experiments.aupr <- experiments.bench(methods="all",
                                          datasources.names = "Toy",
                                          experiments=c(20,30,60),
                                          datasets.num=2,seed=4677)

## ----wrapper_examples----------------------------------------------------
    Spearmancor <- function(data){
        cor(data,method="spearman")
    }

    Pearsoncor <- function(data){
        cor(data,method="pearson")
    }

## ----evaluate_grn--------------------------------------------------------
    res <- netbenchmark(datasources.names="syntren300",
        methods=c("Spearmancor","Pearsoncor"))
    aupr <- res[[1]][,-(1:2)]

## ----fig.width=7, fig.height=6-------------------------------------------
    boxplot(aupr, main="Syntren300")

## ----fig.width=7, fig.height=6-------------------------------------------
    PR <- res[[5]][[1]]
    col <- rainbow(3)
    plot(PR$rec[,1],PR$pre[,1],type="l",lwd=3,col=col[1],xlab="Recall",
        ylab="Precision",main="Syntren300",xlim=c(0,1),ylim=c(0,1))
    lines(PR$rec[,2],PR$pre[,2],type="l",lwd=3,col=col[2])
    lines(PR$rec[,3],PR$pre[,3],type="l",lwd=3,col=col[3])
    legend("topright", inset=.05,title="Method",colnames(PR$rec),fill=col)

