#how to sum a variable by group  in r
#cargar datos2012
library(data.table)
library(dplyr)
#cargar base de datos
choose.files()
data2013<-read.csv("C:\\Users\\Usuario\\OneDrive\\Escritorio\\DOCTORADO\\DRA. CARLA-COMPLEJIDAD ECONÓMICA\\LABS\\LAB 29\\INPUT\\greenR_2013.csv")
data2013<-as.data.table(data2013)

class(data2013)

resultados2013 <- data2013 %>%
  group_by(location_name) %>%
  summarise("suma_GCI_2013 = sum(GCI_2013, na.rm = T)",
            Suma_GP_SINVCR = um(GP_SINVCR, na.rm = T),
            suma_GCP_2013 = sum(GCP_2013, na.rm = T),
            count = no)

resultados2013 <- data2013 %>%
     group_by(location_name) %>%
     summarise(suma_GCI_2013 = sum(GCI_2013, na.rm = T),
                             Suma_GP_SINVCR = sum(GP_SINVCR, na.rm = T),
                             suma_GCP_2013 = sum(GCP_2013, na.rm = T),
                             count = n())
