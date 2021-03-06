#' A list of all companies in the Russell 3000 Index
#'
#' Stores the names and tickers for all companies in the 
#' Russell 3000 Index as of January 2016.The list from 
#' which the data was culled was last updated 2015/06/26.
#' 
#' The Russell 3000 Index is an equity index that tracks 
#' the performance of the "3000" (this number may actually 
#' vary from year to year, but is always in the neighborhood 
#' of 3000) largest US companies as measured by market cap. 
#' The component companies that make up this index are 
#' reconstituted once a year, usually between May and June.
#' At this reconstitution, all companies are reranked based 
#' on their market caps for the year, and any companies which 
#' become "ineligible" by,for example, going bankrupt, 
#' becoming acquired, or becoming private, are replaced at 
#' this time.
#' 
#' This Index was chosen due to the size of its component
#' companies (which mitigates the likelihood of erroneous 
#' items, such as a tiny company doubling in profitability 
#' despite there being little absolute change), this package's 
#' reliance on US-centric data sources, and to produce items which
#' are more likely to interest the user.
#' 
#' Companies crucially provides tickers to many functions in the
#' package, allowing the package to connect financial statements 
#' and price information to a specific company. It is also the 
#' basis of the many "get" functions of the package, which retrieves 
#' and then formats data from the web. The Companies data set is the 
#' "base" data that produces financials, prices, and ultimately 
#' quality scores.
#' 
#' @format A data frame with approximately 3000 rows and 2 variables.
#' \itemize{
#'    \item name = The name of the company. Of class 
#'    \code{"character"}.
#'    \item ticker = The ticker of the company. Of class 
#'    \code{"character"}.
#'  }
#' @source \url{https://www.russell.com/documents/indexes/membership/membership-russell-3000.pdf}
#' @name companies
#' @seealso \code{\link{financials}}
#' @seealso \code{\link{prices}}
#' @docType data
#' @keywords data
NULL