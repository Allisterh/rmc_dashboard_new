system("java -version")
library(rJava)

if(Sys.getenv("JAVA_HOME")!=""){
  Sys.setenv(JAVA_HOME="")
}
library(rJava)


R.Version()$arch

system("java -version")


library(rJava)
.jinit()
.jcall("java/lang/System", "S", "getProperty", "java.runtime.version")


Sys.getenv("JAVA_HOME")


# For CRAN release:
install.packages("RJDemetra", INSTALL_opts = "--no-multiarch")
