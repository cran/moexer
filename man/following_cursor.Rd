% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iss.R
\name{following_cursor}
\alias{following_cursor}
\title{A Decorator for Following Response Cursor}
\usage{
following_cursor(query_iss_fn)
}
\arguments{
\item{query_iss_fn}{A function object corresponding to \link{query_iss}.}
}
\value{
Decorated \code{query_iss_fn}.
}
\description{
Iterative queries will be issued to fetch all section pages as indicated by
\verb{<section>.cursor}; the cursor section itself will be removed from the
response.
}
\examples{
\dontrun{
following_cursor(query_iss)(
    'history/engines/stock/markets/shares/securities/MOEX',
    params = list(
        from = '2021-09-01',
        till = '2021-12-31',
        start = 10
    )
)
}
}
