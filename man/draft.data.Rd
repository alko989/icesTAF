% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/draft.data.R
\name{draft.data}
\alias{draft.data}
\title{Draft DATA.bib}
\usage{
draft.data(originator = NULL, year = NULL, title = NULL,
  period = NULL, source = "file", file = "",
  data.dir = "bootstrap/initial/data", data.files = dir(data.dir,
  recursive = TRUE))
}
\arguments{
\item{originator}{who prepared the data, e.g. a working group acronym.}

\item{year}{year of the analysis when the data were used.}

\item{title}{description of the data, including survey names or the like.}

\item{period}{first and last year that the data cover, separated by a simple
dash, or a single number if the data cover only one year.}

\item{source}{where the data originate from. This can be a URL, filename, or
the special value \code{"file"}.}

\item{file}{optional filename to save the draft metadata to a file.}

\item{data.dir}{directory containing data files.}

\item{data.files}{data filenames. The default is all files inside
\code{data.dir}.}
}
\value{
Object of class \verb{Bibtex}.
}
\description{
Create an initial draft version of a \file{DATA.bib} metadata file.
}
\details{
Typical usage is to specify \code{originator} and \code{year}, while using
the default values for the other arguments. Most data files have the same
originator and year, which can be specified to facilitate completing the
entries after creating the initial draft.

The special value \verb{source = "file"} is described in the
\code{\link{process.bib}} help page, along with other metadata information.

The default value \code{file = ""} prints the initial draft in the console,
instead of writing it to a file. The output can then be pasted into a file to
edit further, without accidentally overwriting an existing metadata file.

This function is intended to be called from the top directory of a TAF
analysis which contains a \file{bootstrap/initial/data} directory, as
reflected in the default value of \code{data.dir}.
}
\note{
After creating the initial draft, the user can complete the description of
each data file inside the \verb{title} field and look into each file to
specify the \verb{period} that the data cover.
}
\examples{
\dontrun{
# Print in console
draft.data("WGEF", 2015)

# Export to file
draft.data("WGEF", 2015, file="bootstrap/DATA-draft.bib")
}

}
\seealso{
\code{\link{draft.software}} creates an initial draft version of a
\file{SOFTWARE.bib} metadata file.

\code{\link{process.bib}} reads and processes metadata entries. The help page
contains example metadata entries and commentary.

\code{\link{icesTAF-package}} gives an overview of the package.
}
