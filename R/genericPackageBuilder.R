#' Himel Mallick's R Code
#'
#' Builds an R package and adds necessary documentation. 
#' @param parentDirectory Parent directory where the package folder is located.
#' Must be modified accordingly.
#' @param packageName Name of the R package you are trying to build. Assumes that all necessary files are in place.
#' @param build_vignettes Build vignette document? Default is FALSE.
#' @export
genericPackageBuilder<-function(packageName,
                                parentDirectory = '/Users/himelmallick/Library/CloudStorage/Dropbox/Repos/',
                                build_vignette = TRUE){
  setwd(paste(parentDirectory, packageName, sep = ''))
  devtools::document()
  setwd('..')
  devtools::install(packageName)
  if (build_vignette)   {  
    vignette_path<-paste(parentDirectory, packageName, '/vignettes', sep = '')
    if (!file.exists(vignette_path)) {
      dir.create(vignette_path)
      }
    devtools::build_manual(packageName, vignette_path)
  }
}

