#' Get mainTypes (the latest stable version)
#' @importFrom httr GET
#' @importFrom httr content
#' @importFrom jsonlite fromJSON
#' @export

get_main_types <-
        function() {
                baseURL <- "http://oncotree.mskcc.org"
                resp <- httr::GET(paste0(baseURL, "/api/mainTypes"),
                                  query = list(version="oncotree_latest_stable"))
                parsed <- jsonlite::fromJSON(httr::content(resp, "text"))
                return(parsed)
        }





#' Get OncoTree Versions
#' @importFrom httr GET
#' @importFrom httr content
#' @importFrom jsonlite fromJSON
#' @export

get_oncotree_versions <-
        function() {
                baseURL <- "http://oncotree.mskcc.org"
                resp <- httr::GET(paste0(baseURL, "/api/versions"))
                parsed <- jsonlite::fromJSON(httr::content(resp, "text"))
                return(parsed)
        }





#' Get tumorTypes Tree
#' @importFrom httr GET
#' @importFrom httr content
#' @importFrom jsonlite fromJSON
#' @export

get_tumor_types_tree <-
        function() {
                baseURL <- "http://oncotree.mskcc.org"
                resp <- httr::GET(paste0(baseURL, "/api/tumorTypes/tree"))
                parsed <- jsonlite::fromJSON(httr::content(resp, "text"))
                return(parsed)
        }





#' Get tumorTypes
#' @importFrom httr GET
#' @importFrom httr content
#' @importFrom jsonlite fromJSON
#' @export

get_tumor_types <-
        function() {
                baseURL <- "http://oncotree.mskcc.org"
                resp <- httr::GET(paste0(baseURL, "/api/tumorTypes"))
                parsed <- jsonlite::fromJSON(httr::content(resp, "text"))
                return(parsed)
        }




