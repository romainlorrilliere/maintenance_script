
## export
setwd("c:/git/maintenance_script")
d <- as.data.frame(installed.packages())
write.csv(d,"les_packages.csv")


## import
setwd("c:/git/maintenance_script")

d <- read.csv("les_packages.csv")

les_packages <- d$Package


install.packages(pkgs= les_packages, repos= "https://pbil.univ-lyon1.fr/CRAN/" , dependencies=TRUE, quiet=TRUE,keep_outputs=FALSE)

"apply: Searching for program: No such file or directory, Rterm"