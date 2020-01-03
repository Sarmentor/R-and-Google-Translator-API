library(stringi)
library(translateR)

#########################################################################
###### Fast translation of texts with R and Google Translator API #######
#########################################################################
###### NOTE: Fees may apply when using your Google Translator API #######
#########################################################################


#Google translater API key
#You should get your key and
#substitute it here
my.api.key <- "<Your API KEY HERE>"

#Read Text File
path <- file.choose(new = FALSE)
file_in <- file(path,"r")
file_out <- file(paste(path,"-TRANSLATED.txt",sep = ""),"w")

#read input document to text variable
text <- readLines(file_in, encoding = "LATIN", n=-1)

#translate text to selected language
#this example is from Portuguese ('pt') to English ('en')
#change this to your settings
text_translated <- translate(content.vec=text, google.api.key = my.api.key , source.lang ='pt',target.lang ='en')

#write translated text to output .txt file
writeLines(text_translated, con=file_out)

#close file connections
close(file_in)
close(file_out)
