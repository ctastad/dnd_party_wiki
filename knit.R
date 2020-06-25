#!/usr/bin/env Rscript

cur_dir <- getwd()
setwd("/home/chris/Seafile/library/personal/hobbies/dnd/dnd_party_wiki")

rmarkdown::render("index.Rmd")
rmarkdown::render("tools.Rmd")
rmarkdown::render("world.Rmd")
rmarkdown::render("dm_screen.Rmd")
rmarkdown::render_site("index.Rmd")

fl <- Sys.glob("*.html")

ifelse(file.exists(fl), file.remove(fl))

setwd(cur_dir)

