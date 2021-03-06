% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_datatable_DateIDate.R
\name{convert_datatable_DateIDate}
\alias{convert_datatable_DateIDate}
\title{Find and convert data.table columns from POSIX to IDate}
\usage{
convert_datatable_DateIDate(dat, cols = NULL)
}
\arguments{
\item{dat}{A data.table}

\item{cols}{(optional) A subset of columns to search (see details)}
}
\description{
Converts a data.table's columns from Dates to IDates.  This conversion
		is done BY REFERENCE meaning that the original data.table is modified.
}
\details{
The data.table is returned invisibly if needed.
		
		The cols can be specified as a character vector of column names.  The
		entire data.table is returned, but only the columns in "cols" are 
		searched.  A warning is produced if no columns are POSIX.
}
\author{
Gene Leynes
}
\seealso{
\code{\link[data.table]{data.table}}
	\code{\link[data.table]{as.IDate}} 
	\code{\link[data.table]{set}}
}

