#' Himel Mallick's R Code
#'
#' Builds an R package and adds necessary documentation. 
#' @param parentDirectory Parent directory where the package folder is located.
#' Must be modified accordingly.
#' @param packageName Name of the R package you are trying to build. Assumes that all necessary files are in place.
#' @param build_vignettes Build vignette document? Default is FALSE.
#' @export
genericPackageBuilder<-function(packageName,
                                parentDirectory = '/Users/Home/Dropbox (Personal)/Repos/',
                                build_vignettes = FALSE){
  setwd(paste(parentDirectory, packageName, sep = ''))
  devtools::document()
  setwd('..')
  devtools::install(packageName, build_vignettes = build_vignettes)
}

