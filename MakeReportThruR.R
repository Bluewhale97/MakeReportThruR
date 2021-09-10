#1. R offers several elegant solutions for incorporating R code and results into reports
#additionally, data can be tied to the report so that changing the data will change the reports
#these dynamic reports can be saved as: web pages, microsoft word documents, open document files and publication-ready PDF or Post Script documents

#2. a template approach to reports
#the template contains the report text, formatting syntax and R code chunks
#how R output is included in the report is controlled by options

#three components
#report text: any explanatory phrases and text. Here the report text is REPORT. Here is some data, plots and here is a plot
#formatting syntax: the tages that control report famatting
#R code: R statements to be execyted

#the template file is passed to the render() function in the rmarkdown package, and a web page named example.html is created. The web page contains both the report text and R results

#depending on the template file we start with and the functions used to process, different report formates(HTML web pages, Microsoft Word, OpenOffice Writer documents, PDF reports, articles and books) are created
#the reports are dynamic in the sense that changing the data and reporocessing the template file will result in a new report

#3. creating dynamic reports with R and Markdown
#use rmarkdown package to create documents generated from Markdown syntax and R code
#when the document is processed, the R code is executed and the output is formatted and embedded in the finished document
#we can use this approach reports as HTML, Word or PDF documents

#steps are:
#a. install the rmarkdown packgae
#b.install the xtable package
#c. install Pandox(http://johnmacfarlane.net/pandoc/index.html)
#d. if we want to create PDF documents, install a LaTeX compiler, a LaTeX compiler converts a LaTeX document into a high quality typeset PDF document, MiKTeX(www.miktex.org)for windows

install.packages("rmarkdown")
install.packages("xtable")
install.packages(
  "http://johnmacfarlane.net/pandoc/index.html", 
  repos = NULL, type = "source"
)

library(rmarkdown)
library(xtable)
render("women.Rmd","html_document")
