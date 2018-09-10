#' Himel Mallick's R Code
#'
#' Builds an R package and adds necessary documentation. 
#' @param parentDirectory Parent directory where the package folder is located.
#' Must be modified accordingly.
#' @param packageName Name of the R package you are trying to build. Assumes that all necessary files are in place.
#' @export
genericPackageBuilder<-function(packageName,
                                parentDirectory = '/Users/hmallick/Dropbox (Personal)/Repos/'){
  setwd(paste(parentDirectory, packageName, sep = ''))
  devtools::document()
  setwd('..')
  devtools::install(packageName)
}

