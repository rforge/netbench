getData <- function(datasource.name=NULL,getNet=TRUE){
    Availabledata <- c("rogers1000","syntren1000","syntren300",
        "gnw1565","gnw2000","toy")
    if(is.null(datasource.name)){
        stop("Please specify a datasource name between the following ones:
            rogers1000, syntren1000, syntren300, gnw1565, gnw2000 or toy.")
    }else{
        if(!all(datasource.name %in% Availabledata)){
            stop("The specified datasources are not available")
        }
        datasource <- eval(parse(text=paste(datasource.name,".data",sep="")))
        if(getNet){
            true.net <- eval(parse(text=paste(datasource.name,".net",sep="")))
            list(datasource,true.net)
        }else{
            datasource
        }
    }
}