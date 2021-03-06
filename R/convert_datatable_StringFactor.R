#' @name   convert_datatable_StringFactor
#' @title  Convert data.table character columns to factor columns
#' @author Gene Leynes
#' 
#' @param dat	A data.table
#' @param cols	(optional) A vector of column names or column numbers to be 
#' 				converted. If blank, then all columns of class character are
#' 				converted.
#'
#' @description
#' 		Shortcut to convert data.table columns from string to factor.
#'
#' @details
#'      Returns the data.table invisibly because data.tables are modified in 
#'      place, and there is no need to make a copy.
#' 		
#' @seealso
#' 	\code{\link[data.table]{data.table}}
#' 	
#' @examples 
#' 		require(geneorama)
#' 		## Create examples
#' 		dt <- as.data.table(OrchardSprays)
#' 		dt[ , treatment := as.character(treatment)]
#' 		dtchar <- copy(dt)
#' 		dtchar[ , rowpos := as.character(rowpos)]
#' 		dtchar[ , colpos := as.character(colpos)]
#' 		str(dt)
#' 		str(dtchar)
#' 		
#' 		## No columns specified
#' 		convert_datatable_StringFactor(dt)
#' 		str(dt)
#' 		## Specify column by position
#' 		convert_datatable_StringFactor(dtchar, cols=2)
#' 		str(dtchar)
#' 		convert_datatable_StringFactor(dtchar, cols="colpos")
#' 		str(dtchar)
#' 	



convert_datatable_StringFactor <- function(dat, cols=NULL){
	## Identify target columns, if not specified
	if(is.null(cols)){
		cols <- which(sapply(dat, class) == "character")
	}
	## To avoid warning about numerical efficiency
	if(is.numeric(cols)){
		cols <- as.integer(cols)
	}
	## Convert columns
	for(col in cols){
		set(dat, j=col, value=as.factor(dat[[col]]))
	}
	invisible(dat)
}

