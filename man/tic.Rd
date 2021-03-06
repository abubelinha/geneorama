% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tic.R
\name{tic}
\alias{tic}
\title{Start timing}
\usage{
tic()
}
\description{
Matlab inspired timing method.  Put tic() at the start of a process, and
		toc() at the end.
}
\details{
Creates a global variable called ticTime.
     
		System.time is preferred (see see also).
}
\author{
Gene Leynes
}
\seealso{
\code{\link{toc}}
	\code{\link[base]{system.time}}
}

