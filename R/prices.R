#' A dataframe of price returns and closing prices for companies in 
#' the Russell 3000 Index
#'
#' Stores price returns and closing prices for the past two years 
#' (if available) for the Russell 3000 Index companies as well as 
#' the S&P 500 (uniquely taken from Yahoo finance), to serve as a 
#' benchmark. For a description of the Russell 3000 index, as well as 
#' why it was used for this package, see \code{\link{companies}}.
#' Last updated 2016/01/06.
#' 
#' Prices is used to calculate the safety score of companies, and
#' stores closing stock prices and price returns for every company 
#' in \code{\link{companies}} for the past two years. Price data 
#' varies significantly among companies, and companies that do not 
#' return price data are not represented here. Price returns are 
#' also calculated using two adjacent days in the dataset, a timespan
#' which may cover one day or several depending on the company and 
#' what day is being considered.
#' 
#' @format A data frame with roughly 1,500,000 rows and 4 variables
#' \itemize{
#'    \item ticker = Company ticker, of class \code{"character"}.
#'    \item date = Date in format YYYY-MM-DD, of class \code{"character"}.
#'    \item pret = Price returns, of class \code{"numeric"}.
#'    \item close = Closing stock prices for the day, of class \code{"numeric"}.
#'  }
#' @source Google Finance, accessed through quantmod
#' @name prices
#' @seealso \code{\link{companies}}
#' @seealso \code{\link{financials}}
#' @seealso \code{\link{market_data}}
#' @seealso \code{\link{market_safety}}
#' @seealso \code{\link{get_prices}}
#' @seealso \code{\link{tidy_prices}}
#' @examples
#' sub_comps <- qmjdata::companies[50:51,]
#' new_quality <- market_data(sub_comps, qmjdata::financials, qmjdata::prices)
#' @docType data
#' @keywords data
NULL