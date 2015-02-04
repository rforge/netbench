## ----main_benchmark------------------------------------------------------
    library(netbenchmark)
    top20.aupr <- netbenchmark(methods="all",datasources.names = "Toy",
                               local.noise=20,global.noise=10,
                               noiseType=c("normal","lognormal"),
                               datasets.num = 2,experiments = 40,
                               seed=1422976420)
   

## ----print---------------------------------------------------------------
   print(top20.aupr[[1]])

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

## ----compare_grn---------------------------------------------------------
    comp <- netbenchmark(datasources.names="syntren300",
        methods=c("all.fast","Spearmancor","Pearsoncor"))
    aupr <- comp[[1]][,-(1:2)]

## ----fig.width=7, fig.height=6-------------------------------------------
    #make the name look prety
    library("tools")
    colnames(aupr) <- sapply(colnames(aupr),file_path_sans_ext)
    boxplot(aupr, main="Syntren300")

