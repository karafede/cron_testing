# Cron examples
# crontab -e
# Will open vim

### (run this script every 5 minutes)-----------------------------------------
# */5 * * * * Rscript /home/rstudio/cron_testing/code_prova.R  
# recipients =  "karafede@hotmail.com"
# */5 * * * * mail -s "Prova Amazon Web Service" -a /home/rstudio/cron_testing/*$
  
  

# Set a working directory as in gisdev server
setwd("/home/rstudio/cron_testing")


# Get system time
tm <- Sys.time()
tm <- as.character(tm)

# Remove odd characters
file_name <- gsub(":| |-", "_", tm)

# Write file
write(tm, paste0(file_name, ".txt"))
# write.table(tm,file="C:/z_scores_volatiles/OUT.TXT", sep='\t')
