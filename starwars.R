rm(list = ls()); gc(); gc()
# options(java.parameters = "-Xmx4096m")#8192
# options(java.parameters = "-XX:-UseConcMarkSweepGC")
# options(java.parameters = "-XX:-UseGCOverheadLimit")
options(bitmapType='cairo')
options(scipen = 999)

library(dplyr)
#library(tidyr)
library(ggplot2)
# devtools::install_github("56north/Rmazon")
library(Rmazon)

# Define your workspace: "X:/xxx/"
#wd <- "D:/github/statistics101/"
wd <- path.expand("~/Documents/github/amazon_reviews")
setwd(wd)

films <- as_data_frame(
  rbind(
    # reboot
    c("Star Wars: The Force Awakens (Theatrical)", "B019G7X8DS"),
    c("Star Wars: The Force Awakens (Plus Bonus Features)", "B019EG1TC8"),
    # prequels
    c("Star Wars: The Phantom Menace", "B00VMHYKBA"),
    c("Star Wars: Attack of the Clones", "B00VMHYA38"),
    c("Star Wars: Revenge of the Sith", "B00VMHYUXS"),
    # original
    c("Star Wars: A New Hope", "B00VN0DLRA"),
    c("Star Wars: The Empire Strikes Back", "B018IYXYFC"),
    c("Star Wars: Return of the Jedi", "B00VMJ7RFY"),
    # other
    c("Star Wars The Digital Six film Collection", "B00VJ04TH0"),
    c("Star Wars Rebels", "B00O3X20TY")
  )
) %>% setNames(c("title", "amazon_id"))

product_info <- Rmazon::get_product_info(films[6,2])
product_reviews <- Rmazon::get_reviews(films[6,2])

















