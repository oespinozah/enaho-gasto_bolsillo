
library(utils)
library(httr)
library(tidyverse)
library(rio) # Permite importar los archivos de Stata descargados del INEI.

# Se crea la carpeta de resultados si todavía no existe.
dir.create("data", showWarnings = FALSE)

# Se usa el descompresor de Rtools porque algunos ZIP antiguos del INEI
# contienen nombres de archivo que el descompresor interno de R no interpreta.
descompresor <- Sys.which("unzip")
if (descompresor == "") {
  stop("No se encontró el programa unzip necesario para abrir los archivos del INEI.")
}

# ENAHO 2007 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/283-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2007 <- import("temporal/283-Modulo03/enaho01a-2007-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2008 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/284-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2008 <- import("temporal/284-Modulo03/enaho01a-2008-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2009 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/285-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2009 <- import("temporal/285-Modulo03/enaho01a-2009-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2010 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/279-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2010 <- import("temporal/279-Modulo03/enaho01a-2010-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2011 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/291-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2011 <- import("temporal/291-Modulo03/enaho01a-2011-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2012 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/324-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2012 <- import("temporal/324-Modulo03/enaho01a-2012-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2013 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/404-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2013 <- import("temporal/404-Modulo03/enaho01a-2013-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2014 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/440-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2014 <- import("temporal/440-Modulo03/enaho01a-2014-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2015 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/498-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2015 <- import("temporal/enaho01a-2015-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2016 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/546-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2016 <- import("temporal/546-Modulo03/enaho01a-2016-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2017 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/603-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2017 <- import("temporal/603-Modulo03/enaho01a-2017-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2018 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/634-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2018 <- import("temporal/634-Modulo03/enaho01a-2018-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2019 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/687-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2019 <- import("temporal/687-Modulo03/enaho01a-2019-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2020 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/737-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2020 <- import("temporal/737-Modulo03/enaho01a-2020-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2021 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/759-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2021 <- import("temporal/759-Modulo03/enaho01a-2021-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2022 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/784-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2022 <- import("temporal/784-Modulo03/enaho01a-2022-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo",
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2023 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/906-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2023 <- import("temporal/906-Modulo03/enaho01a-2023-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo"
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2024 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/966-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2024 <- import("temporal/966-Modulo03/enaho01a-2024-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo"
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2025 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/1031-Modulo03.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2025 <- import("temporal/1031-Modulo03/enaho01a-2025-300.dta") %>% janitor::clean_names() %>%
  mutate(
    educacion = case_when(
      p301a == 1 ~ "sin nivel",
      p301a == 2 ~ "educación inicial",
      p301a == 3 ~ "primaria incompleta",
      p301a == 4 ~ "primaria completa",
      p301a == 5 ~ "secundaria incompleta",
      p301a == 6 ~ "secundaria completa",
      p301a == 7 ~ "sup. no univ. incompleta",
      p301a == 8 ~ "sup. no univ. completa",
      p301a == 9 ~ "sup. univ. incompleta",
      p301a == 10 ~ "sup. univ. completa",
      p301a == 11 ~ "post-grado universitario",
      p301a == 12 ~ "educación básica especial"
    ),
    etnicidad = case_when(
      p300a == 1 ~ "Quechua/Aymara",
      p300a == 2 ~ "Quechua/Aymara",
      p300a == 3 ~ "Otro origen nativo",
      p300a == 4 ~ "Castellano",
      p300a == 5 ~ "Extranjero",
      p300a == 6 ~ "Extranjero",
      p300a == 7 ~ "Extranjero",
      p300a == 8 ~ "Sordo mudo"
    )
  ) %>% select(a_no:codinfor, educacion, etnicidad)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

gc()


# Consolidado -------------------------------------------------------------

enaho_educacion <- bind_rows(
  enaho_2007, enaho_2008, enaho_2009, enaho_2010, enaho_2011, enaho_2012, enaho_2013, enaho_2014,
  enaho_2015, enaho_2016, enaho_2017, enaho_2018, enaho_2019, enaho_2020, enaho_2021, enaho_2022,
  enaho_2023, enaho_2024, enaho_2025
)

enaho_educacion %>% saveRDS("data/enaho_educacion.rds")




# ENAHO 2007 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/283-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2007 <- import("temporal/283-Modulo05/enaho01a-2007-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)


# ENAHO 2008 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/284-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2008 <- import("temporal/284-Modulo05/enaho01a-2008-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2009 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/285-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2009 <- import("temporal/285-Modulo05/enaho01a-2009-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% rename("a_no" = ano) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2010 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/279-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2010 <- import("temporal/279-Modulo05/enaho01a-2010-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2011 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/291-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2011 <- import("temporal/291-Modulo05/enaho01a-2011-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2012 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/324-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2012 <- import("temporal/324-Modulo05/enaho01a-2012-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)
# enaho_2012$p560d_01
# enaho_2012$p560d_10

# ENAHO 2013 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/404-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2013 <- import("temporal/404-Modulo05/enaho01a-2013-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2014 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/440-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2014 <- import("temporal/440-Modulo05/enaho01a-2014-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2015 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/498-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2015 <- import("temporal/498-Modulo05/enaho01a-2015-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2016 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/546-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2016 <- import("temporal/546-Modulo05/enaho01a-2016-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2017 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/603-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2017 <- import("temporal/603-Modulo05/enaho01a-2017-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2018 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/634-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2018 <- import("temporal/634-Modulo05/enaho01a-2018-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2019 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/687-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2019 <- import("temporal/687-Modulo05/enaho01a-2019-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2020 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/737-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2020 <- import("temporal/737-Modulo05/enaho01a-2020-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2021 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/759-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2021 <- import("temporal/759-Modulo05/enaho01a-2021-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2022 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/784-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2022 <- import("temporal/784-Modulo05/enaho01a-2022-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2023 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/906-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2023 <- import("temporal/906-Modulo05/enaho01a-2023-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2024 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/966-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2024 <- import("temporal/966-Modulo05/enaho01a-2024-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2025 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/1031-Modulo05.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2025 <- import("temporal/1031-Modulo05/enaho01a-2025-500.dta") %>% janitor::clean_names() %>%
  mutate(
    # Se usa la condición de actividad calculada por el INEI.
    empleo = case_when(
      ocu500 == 1 ~ "Empleado",
      ocu500 %in% c(2, 3) ~ "Desempleado",
      ocu500 == 4 ~ "Inactivo"
    )
  ) %>% select(a_no:codinfor, empleo)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

gc()


# Consolidado -------------------------------------------------------------

enaho_empleo <- bind_rows(
  enaho_2007, enaho_2008, enaho_2009, enaho_2010, enaho_2011, enaho_2012, enaho_2013, enaho_2014,
  enaho_2015, enaho_2016, enaho_2017, enaho_2018, enaho_2019, enaho_2020, enaho_2021, enaho_2022,
  enaho_2023, enaho_2024, enaho_2025
)

enaho_empleo %>% saveRDS("data/enaho_empleo.rds")






# ENAHO 2007 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/283-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2007 <- import("temporal/283-Modulo02/enaho01-2007-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2008 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/284-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2008 <- import("temporal/284-Modulo02/enaho01-2008-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2009 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/285-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2009 <- import("temporal/285-Modulo02/enaho01-2009-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2010 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/279-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2010 <- import("temporal/279-Modulo02/enaho01-2010-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2011 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/291-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2011 <- import("temporal/291-Modulo02/enaho01-2011-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2012 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/324-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2012 <- import("temporal/324-Modulo02/enaho01-2012-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2013 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/404-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2013 <- import("temporal/404-Modulo02/enaho01-2013-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2014 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/440-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2014 <- import("temporal/440-Modulo02/enaho01-2014-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2015 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/498-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2015 <- import("temporal/498_Modulo02/enaho01-2015-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2016 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/546-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2016 <- import("temporal/546-Modulo02/enaho01-2016-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2017 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/603-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2017 <- import("temporal/603-Modulo02/enaho01-2017-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2018 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/634-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2018 <- import("temporal/634-Modulo02/enaho01-2018-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2019 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/687-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2019 <- import("temporal/687-Modulo02/enaho01-2019-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2020 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/737-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2020 <- import("temporal/737-Modulo02/enaho01-2020-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2021 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/759-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2021 <- import("temporal/759-Modulo02/enaho01-2021-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2022 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/784-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2022 <- import("temporal/784-Modulo02/enaho01-2022-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2023 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/906-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2023 <- import("temporal/906-Modulo02/enaho01-2023-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2024 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/966-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2024 <- import("temporal/966-Modulo02/enaho01-2024-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2025 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/1031-Modulo02.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2025 <- import("temporal/1031-Modulo02/enaho01-2025-200.dta") %>% janitor::clean_names() %>%
  mutate(
    edad = p208a,
    sexo = if_else(p207 == 1, "hombre", "mujer")
  ) %>% select(a_no:codperso, edad, sexo)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

gc()


# Consolidado -------------------------------------------------------------

enaho_miembros <- bind_rows(
  enaho_2007, enaho_2008, enaho_2009, enaho_2010, enaho_2011, enaho_2012, enaho_2013, enaho_2014,
  enaho_2015, enaho_2016, enaho_2017, enaho_2018, enaho_2019, enaho_2020, enaho_2021, enaho_2022,
  enaho_2023, enaho_2024, enaho_2025
)

enaho_miembros %>% saveRDS("data/enaho_miembros.rds")




# ENAHO 2007 --------------------------------------------------------------

# Los gastos con referencia de 4 semanas se multiplican por 13, los gastos
# con referencia de 3 meses se multiplican por 4 y los gastos de los últimos
# 12 meses se conservan. Así, todos los componentes de salud quedan anualizados.
url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/283-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2007 <- import("temporal/283-Modulo04/enaho01a-2007-400.dta") %>% janitor::clean_names()
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

enaho_2007 <- enaho_2007 %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)

# ENAHO 2008 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/284-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2008 <- import("temporal/284-Modulo04/enaho01a-2008-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2009 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/285-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2009 <- import("temporal/285-Modulo04/enaho01a-2009-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2010 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/279-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2010 <- import("temporal/279-Modulo04/enaho01a-2010-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2011 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/291-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2011 <- import("temporal/291-Modulo04/Enaho01A-2011-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2012 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/324-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2012 <- import("temporal/enaho01a-2012-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2013 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/404-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2013 <- import("temporal/404-Modulo04/Enaho01a-2013-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2014 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/440-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2014 <- import("temporal/440-Modulo04/enaho01a-2014-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2015 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/498-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2015 <- import("temporal/enaho01a-2015-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2016 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/546-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2016 <- import("temporal/546-Modulo04/enaho01a-2016-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2017 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/603-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2017 <- import("temporal/603-Modulo04/enaho01a-2017-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2018 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/634-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2018 <- import("temporal/634-Modulo04/enaho01a-2018-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2019 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/687-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2019 <- import("temporal/687-Modulo04/enaho01a-2019-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2020 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/737-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2020 <- import("temporal/737-Modulo04/enaho01a-2020-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2021 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/759-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2021 <- import("temporal/759-Modulo04/enaho01a-2021-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2022 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/784-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2022 <- import("temporal/784-Modulo04/enaho01a-2022-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601),0,p41601),
    p41602 = if_else(is.na(p41602),0,p41602),
    p41603 = if_else(is.na(p41603),0,p41603),
    p41604 = if_else(is.na(p41604),0,p41604),
    p41605 = if_else(is.na(p41605),0,p41605),
    p41606 = if_else(is.na(p41606),0,p41606),
    p41607 = if_else(is.na(p41607),0,p41607),
    p41608 = if_else(is.na(p41608),0,p41608),
    p41609 = if_else(is.na(p41609),0,p41609),
    p41610 = if_else(is.na(p41610),0,p41610),
    p41611 = if_else(is.na(p41611),0,p41611),
    p41612 = if_else(is.na(p41612),0,p41612),
    p41613 = if_else(is.na(p41613),0,p41613),
    p41614 = if_else(is.na(p41614),0,p41614),
    p41615 = if_else(is.na(p41615),0,p41615),
    p41616 = if_else(is.na(p41616),0,p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2023 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/906-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2023 <- import("temporal/906-Modulo04/enaho01a-2023-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601), 0, p41601),
    p41602 = if_else(is.na(p41602), 0, p41602),
    p41603 = if_else(is.na(p41603), 0, p41603),
    p41604 = if_else(is.na(p41604), 0, p41604),
    p41605 = if_else(is.na(p41605), 0, p41605),
    p41606 = if_else(is.na(p41606), 0, p41606),
    p41607 = if_else(is.na(p41607), 0, p41607),
    p41608 = if_else(is.na(p41608), 0, p41608),
    p41609 = if_else(is.na(p41609), 0, p41609),
    p41610 = if_else(is.na(p41610), 0, p41610),
    p41611 = if_else(is.na(p41611), 0, p41611),
    p41612 = if_else(is.na(p41612), 0, p41612),
    p41613 = if_else(is.na(p41613), 0, p41613),
    p41614 = if_else(is.na(p41614), 0, p41614),
    p41615 = if_else(is.na(p41615), 0, p41615),
    p41616 = if_else(is.na(p41616), 0, p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2024 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/966-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2024 <- import("temporal/966-Modulo04/enaho01a-2024-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601), 0, p41601),
    p41602 = if_else(is.na(p41602), 0, p41602),
    p41603 = if_else(is.na(p41603), 0, p41603),
    p41604 = if_else(is.na(p41604), 0, p41604),
    p41605 = if_else(is.na(p41605), 0, p41605),
    p41606 = if_else(is.na(p41606), 0, p41606),
    p41607 = if_else(is.na(p41607), 0, p41607),
    p41608 = if_else(is.na(p41608), 0, p41608),
    p41609 = if_else(is.na(p41609), 0, p41609),
    p41610 = if_else(is.na(p41610), 0, p41610),
    p41611 = if_else(is.na(p41611), 0, p41611),
    p41612 = if_else(is.na(p41612), 0, p41612),
    p41613 = if_else(is.na(p41613), 0, p41613),
    p41614 = if_else(is.na(p41614), 0, p41614),
    p41615 = if_else(is.na(p41615), 0, p41615),
    p41616 = if_else(is.na(p41616), 0, p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2025 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/1031-Modulo04.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2025 <- import("temporal/1031-Modulo04/enaho01a-2025-400.dta") %>% janitor::clean_names() %>%
  mutate(
    sis = case_when(
      p4195 == 1 ~ "Tiene SIS",
      p4195 == 2 ~ "No tiene SIS"
    ),
    tipo_seguro = case_when(
      p4191 == 1 ~ "Público",
      p4194 == 1 ~ "Público",
      p4195 == 1 ~ "Público",
      p4192 == 1 ~ "Privado",
      p4193 == 1 ~ "Privado",
      p4196 == 1 ~ "Privado",
      p4197 == 1 ~ "Privado"
    ),
    p41601 = if_else(is.na(p41601), 0, p41601),
    p41602 = if_else(is.na(p41602), 0, p41602),
    p41603 = if_else(is.na(p41603), 0, p41603),
    p41604 = if_else(is.na(p41604), 0, p41604),
    p41605 = if_else(is.na(p41605), 0, p41605),
    p41606 = if_else(is.na(p41606), 0, p41606),
    p41607 = if_else(is.na(p41607), 0, p41607),
    p41608 = if_else(is.na(p41608), 0, p41608),
    p41609 = if_else(is.na(p41609), 0, p41609),
    p41610 = if_else(is.na(p41610), 0, p41610),
    p41611 = if_else(is.na(p41611), 0, p41611),
    p41612 = if_else(is.na(p41612), 0, p41612),
    p41613 = if_else(is.na(p41613), 0, p41613),
    p41614 = if_else(is.na(p41614), 0, p41614),
    p41615 = if_else(is.na(p41615), 0, p41615),
    p41616 = if_else(is.na(p41616), 0, p41616),
    gbs = 13 * (p41601 + p41602 + p41603 + p41604 + p41605) +
      4 * (p41606 + p41607 + p41608 + p41609 + p41610 + p41611 + p41612) +
      p41613 + p41614 + p41615 + p41616,
    enf_cro = if_else(p401 == 1, "Sí", "No")
  ) %>% select(a_no:codinfor, factor_salud = factor07, sis, tipo_seguro, gbs, enf_cro)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

gc()


# Consolidado -------------------------------------------------------------

enaho_salud <- bind_rows(
  enaho_2007, enaho_2008, enaho_2009, enaho_2010, enaho_2011, enaho_2012, enaho_2013, enaho_2014,
  enaho_2015, enaho_2016, enaho_2017, enaho_2018, enaho_2019, enaho_2020, enaho_2021, enaho_2022,
  enaho_2023, enaho_2024, enaho_2025
)

enaho_salud %>% saveRDS("data/enaho_salud.rds")





# ENAHO 2007 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/283-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2007 <- import("temporal/283-Modulo34/sumaria-2007.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)


# ENAHO 2008 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/284-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2008 <- import("temporal/284-Modulo34/sumaria-2008.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2009 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/285-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2009 <- import("temporal/285-Modulo34/sumaria-2009.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2010 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/279-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2010 <- import("temporal/279-Modulo34/sumaria-2010.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2011 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/291-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2011 <- import("temporal/291-Modulo34/sumaria-2011.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2012 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/324-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2012 <- import("temporal/sumaria-2012.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2013 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/404-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2013 <- import("temporal/404-Modulo34/SUMARIA-2013.DTA") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>%
  rename("a_no" = ano) %>%
  select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2014 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/440-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2014 <- import("temporal/440-Modulo34/sumaria-2014.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2015 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/498-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2015 <- import("temporal/sumaria-2015.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2016 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/546-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2016 <- import("temporal/546-Modulo34/sumaria-2016.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2017 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/603-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2017 <- import("temporal/603-Modulo34/sumaria-2017.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2018 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/634-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2018 <- import("temporal/634-Modulo34/sumaria-2018.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2019 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/687-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2019 <- import("temporal/687-Modulo34/sumaria-2019.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2020 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/737-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2020 <- import("temporal/737-Modulo34/sumaria-2020.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2021 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/759-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2021 <- import("temporal/759-Modulo34/sumaria-2021.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2022 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/784-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2022 <- import("temporal/784-Modulo34/sumaria-2022.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta, recursive = TRUE)

# ENAHO 2023 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/906-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2023 <- import("temporal/906-Modulo34/sumaria-2023.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2024 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/966-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2024 <- import("temporal/966-Modulo34/sumaria-2024.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

# ENAHO 2025 --------------------------------------------------------------

url <- "https://proyectos.inei.gob.pe/iinei/srienaho/descarga/STATA/1031-Modulo34.zip"
carpeta <- basename(url)
GET(url, write_disk(carpeta, overwrite = TRUE))
unzip(carpeta, exdir = "temporal", unzip = descompresor)
enaho_2025 <- import("temporal/1031-Modulo34/sumaria-2025.dta") %>% janitor::clean_names() %>%
  mutate(
    n_miembros = mieperho,
    gasto_no_alimentos = gashog1d - (sg23 + sg25),
    ingreso = inghog1d,
    pobreza = case_when(
      pobreza == 1 ~ "pobre extremo",
      pobreza == 2 ~ "pobre no extremo",
      pobreza == 3 ~ "no pobre"
    )
  ) %>% select(a_no:estrato, n_miembros, gasto_no_alimentos, ingreso, pobreza, factor_hogar = factor07)
unlink("temporal", recursive = TRUE)
unlink(carpeta)

gc()


# Consolidado -------------------------------------------------------------

enaho_sumaria <- bind_rows(
  enaho_2007, enaho_2008, enaho_2009, enaho_2010, enaho_2011, enaho_2012, enaho_2013, enaho_2014,
  enaho_2015, enaho_2016, enaho_2017, enaho_2018, enaho_2019, enaho_2020, enaho_2021, enaho_2022,
  enaho_2023, enaho_2024, enaho_2025
)

enaho_sumaria %>% saveRDS("data/enaho_sumaria.rds")



enaho_educacion <- readRDS("data/enaho_educacion.rds")
enaho_empleo <- readRDS("data/enaho_empleo.rds")
enaho_miembros <- readRDS("data/enaho_miembros.rds")
enaho_salud <- readRDS("data/enaho_salud.rds")
enaho_sumaria <- readRDS("data/enaho_sumaria.rds")


enaho_miembros <- enaho_miembros %>%
  # La geografía se toma de salud y, cuando falta, de sumaria. Algunas ediciones
  # del módulo de miembros no conservan estas tres columnas en la misma posición.
  select(a_no, mes, conglome, vivienda, hogar, codperso, edad, sexo)
enaho_empleo <- enaho_empleo %>%
  select(a_no, mes, conglome, vivienda, hogar, codperso, empleo)
enaho_educacion <- enaho_educacion %>%
  select(a_no, mes, conglome, vivienda, hogar, codperso, educacion, etnicidad)


enaho_gbs <- enaho_salud %>%
  group_by(a_no, mes, conglome, vivienda, hogar) %>%
  # Se suman los gastos individuales para obtener el gasto total del hogar.
  summarise(gbs_fam = sum(gbs, na.rm = TRUE), .groups = "drop")

enaho_hogar <- enaho_sumaria %>%
  full_join(enaho_gbs) %>%
  # Se renombran estas columnas para que no intervengan como llaves implícitas
  # al incorporar la información del hogar a cada persona.
  rename(
    ubigeo_hogar = ubigeo,
    dominio_hogar = dominio,
    estrato_hogar = estrato
  ) %>%
  mutate(
    # Los cocientes solo se calculan cuando el denominador es positivo.
    gbtr = if_else(ingreso > 0, gbs_fam/ingreso * 100, NA_real_),
    gcs = case_when(
      gasto_no_alimentos > 0 & gbs_fam/gasto_no_alimentos >= 0.4 ~ 1,
      gasto_no_alimentos > 0 & gbs_fam/gasto_no_alimentos < 0.4 ~ 0
    )
  )


consolidado <- enaho_salud %>%
  select(a_no, mes, conglome, vivienda, hogar, ubigeo, dominio, estrato, codperso,
         factor_salud, sis, tipo_seguro, enf_cro, gbs) %>%
  full_join(enaho_miembros) %>%
  full_join(enaho_empleo) %>%
  full_join(enaho_educacion) %>%
  left_join(enaho_hogar) %>%
  rename("ingreso_fam" = ingreso, "gasto_no_alimentos_fam" = gasto_no_alimentos) %>%
  mutate(
    # Se conserva la geografía del módulo de salud y se completa con sumaria
    # para las personas que no tienen registro en salud.
    ubigeo = coalesce(ubigeo, ubigeo_hogar),
    dominio = coalesce(dominio, dominio_hogar),
    estrato = coalesce(estrato, estrato_hogar),
    # Se identifican las personas con información sobre afiliación al SIS
    # y con una categoría válida de lengua materna usada como aproximación a etnicidad.
    crit_elig = if_else(
      !is.na(sis) & etnicidad %in% c("Castellano", "Quechua/Aymara", "Extranjero", "Otro origen nativo"), 1, 0)
  ) %>%
  select(-ubigeo_hogar, -dominio_hogar, -estrato_hogar)

# Conversión monetaria ----------------------------------------------------

# El IPC, el tipo de cambio oficial promedio y la PPA de consumo privado
# provienen de los Indicadores del Desarrollo Mundial del Banco Mundial.
# IPC: https://data.worldbank.org/indicator/FP.CPI.TOTL?locations=PE
# Tipo de cambio: https://data.worldbank.org/indicator/PA.NUS.FCRF?locations=PE
# PPA: https://data.worldbank.org/indicator/PA.NUS.PRVT.PP?locations=PE
# Se conservan tres medidas distintas: dólares estadounidenses corrientes de
# cada año, dólares internacionales corrientes y dólares internacionales de 2025.
consolidado <- consolidado %>%
  mutate(
    ipc = case_when(
      a_no == 2007 ~ 90.451723406074,
      a_no == 2008 ~ 95.6851479459922,
      a_no == 2009 ~ 98.4946854352191,
      a_no == 2010 ~ 100,
      a_no == 2011 ~ 103.369310953338,
      a_no == 2012 ~ 107.102196896193,
      a_no == 2013 ~ 110.066675027747,
      a_no == 2014 ~ 113.822090321437,
      a_no == 2015 ~ 117.689869607084,
      a_no == 2016 ~ 121.876306151171,
      a_no == 2017 ~ 125.526380202401,
      a_no == 2018 ~ 127.420766879302,
      a_no == 2019 ~ 130.290437892643,
      a_no == 2020 ~ 132.899389330896,
      a_no == 2021 ~ 138.576404455789,
      a_no == 2022 ~ 150.124955005568,
      a_no == 2023 ~ 159.8164418433,
      a_no == 2024 ~ 163.025088363219,
      a_no == 2025 ~ 165.521417370033
    ),
    tipo_cambio_usd = case_when(
      a_no == 2007 ~ 3.12804457735247,
      a_no == 2008 ~ 2.92440833333333,
      a_no == 2009 ~ 3.01150833333333,
      a_no == 2010 ~ 2.825125,
      a_no == 2011 ~ 2.7541,
      a_no == 2012 ~ 2.63758641774892,
      a_no == 2013 ~ 2.70189902597403,
      a_no == 2014 ~ 2.83904413780664,
      a_no == 2015 ~ 3.18443924152237,
      a_no == 2016 ~ 3.37506158720665,
      a_no == 2017 ~ 3.2604884908321,
      a_no == 2018 ~ 3.28660269803296,
      a_no == 2019 ~ 3.3372655465368,
      a_no == 2020 ~ 3.4949411976912,
      a_no == 2021 ~ 3.88055413137587,
      a_no == 2022 ~ 3.83518137473542,
      a_no == 2023 ~ 3.74382620959376,
      a_no == 2024 ~ 3.7525,
      a_no == 2025 ~ 3.5670638032991
    ),
    ppa_consumo = case_when(
      a_no == 2007 ~ 1.4991084940691,
      a_no == 2008 ~ 1.52721378348048,
      a_no == 2009 ~ 1.57766564751711,
      a_no == 2010 ~ 1.57593147574066,
      a_no == 2011 ~ 1.57917737960815,
      a_no == 2012 ~ 1.57508632150185,
      a_no == 2013 ~ 1.64904108354443,
      a_no == 2014 ~ 1.70754960822308,
      a_no == 2015 ~ 1.78257792391577,
      a_no == 2016 ~ 1.84615183366094,
      a_no == 2017 ~ 1.91383695602417,
      a_no == 2018 ~ 1.91717791557312,
      a_no == 2019 ~ 1.91467797756195,
      a_no == 2020 ~ 1.8941730260849,
      a_no == 2021 ~ 1.91807281970978,
      a_no == 2022 ~ 1.92394954445261,
      a_no == 2023 ~ 1.96717664341485,
      a_no == 2024 ~ 1.94918023210626,
      a_no == 2025 ~ 1.92703167944648
    ),
    ipc_2025 = 165.521417370033,
    ppa_consumo_2025 = 1.92703167944648,
    gbs_usd_corriente = gbs/tipo_cambio_usd,
    gbs_int_corriente = gbs/ppa_consumo,
    gbs_soles_2025 = gbs * (ipc_2025/ipc),
    gbs_int_2025 = gbs_soles_2025/ppa_consumo_2025,
    gbs_fam_usd_corriente = gbs_fam/tipo_cambio_usd,
    gbs_fam_int_corriente = gbs_fam/ppa_consumo,
    gbs_fam_soles_2025 = gbs_fam * (ipc_2025/ipc),
    gbs_fam_int_2025 = gbs_fam_soles_2025/ppa_consumo_2025,
    ingreso_fam_usd_corriente = ingreso_fam/tipo_cambio_usd,
    ingreso_fam_int_corriente = ingreso_fam/ppa_consumo,
    ingreso_fam_soles_2025 = ingreso_fam * (ipc_2025/ipc),
    ingreso_fam_int_2025 = ingreso_fam_soles_2025/ppa_consumo_2025,
    gasto_no_alimentos_fam_usd_corriente = gasto_no_alimentos_fam/tipo_cambio_usd,
    gasto_no_alimentos_fam_int_corriente = gasto_no_alimentos_fam/ppa_consumo,
    gasto_no_alimentos_fam_soles_2025 = gasto_no_alimentos_fam * (ipc_2025/ipc),
    gasto_no_alimentos_fam_int_2025 = gasto_no_alimentos_fam_soles_2025/ppa_consumo_2025
  )

# Se convierten en factores únicamente las variables categóricas.
consolidado$sis <- consolidado$sis %>% factor()
consolidado$tipo_seguro <- consolidado$tipo_seguro %>% factor()
consolidado$enf_cro <- consolidado$enf_cro %>% factor()
consolidado$sexo <- consolidado$sexo %>% factor()
consolidado$educacion <- consolidado$educacion %>% factor()
consolidado$etnicidad <- consolidado$etnicidad %>% factor()
consolidado$empleo <- consolidado$empleo %>% factor()
consolidado$pobreza <- consolidado$pobreza %>% factor()
consolidado$gcs <- consolidado$gcs %>% factor()
consolidado$crit_elig <- consolidado$crit_elig %>% factor()

library(expss)

consolidado <- consolidado %>%
  apply_labels(
    a_no = "Año",
    mes = "Mes",
    conglome = "Conglomerado",
    vivienda = "Vivienda",
    hogar = "Hogar",
    ubigeo = "Ubigeo",
    dominio = "Dominio",
    estrato = "Estrato",
    codperso = "Código de Persona",
    factor_salud = "Factor de expansión del módulo de salud",
    factor_hogar = "Factor de expansión del hogar",
    sis = "SIS",
    tipo_seguro = "Tipo de seguro",
    enf_cro = "Enfermedad crónica",
    gbs = "Gasto de bolsillo anualizado en salud en soles nominales",
    edad = "Edad",
    sexo = "Sexo",
    empleo = "Empleo",
    educacion = "Máximo nivel educativo",
    etnicidad = "Etnia a la que la persona pertenece",
    n_miembros = "Número de miembros",
    gasto_no_alimentos_fam = "Gasto familiar no alimentario en soles nominales",
    ingreso_fam = "Ingreso familiar total en soles nominales",
    pobreza = "Niveles de pobreza",
    gbs_fam = "Gasto de bolsillo de salud familiar",
    gbtr = "Gasto de bolsillo en términos relativos",
    gcs = "Gasto catastrófico en salud",
    crit_elig = "Criterio de elegibilidad",
    ipc = "Índice de precios al consumidor, 2010 = 100",
    tipo_cambio_usd = "Tipo de cambio oficial promedio, soles por dólar estadounidense",
    ppa_consumo = "PPA anual de consumo privado, soles por dólar internacional",
    ipc_2025 = "Índice de precios al consumidor de 2025, 2010 = 100",
    ppa_consumo_2025 = "PPA de consumo privado de 2025, soles por dólar internacional",
    gbs_usd_corriente = "Gasto de bolsillo individual en dólares estadounidenses corrientes",
    gbs_int_corriente = "Gasto de bolsillo individual en dólares internacionales corrientes",
    gbs_soles_2025 = "Gasto de bolsillo individual en soles constantes de 2025",
    gbs_int_2025 = "Gasto de bolsillo individual en dólares internacionales de 2025",
    gbs_fam_usd_corriente = "Gasto de bolsillo familiar en dólares estadounidenses corrientes",
    gbs_fam_int_corriente = "Gasto de bolsillo familiar en dólares internacionales corrientes",
    gbs_fam_soles_2025 = "Gasto de bolsillo familiar en soles constantes de 2025",
    gbs_fam_int_2025 = "Gasto de bolsillo familiar en dólares internacionales de 2025",
    ingreso_fam_usd_corriente = "Ingreso familiar en dólares estadounidenses corrientes",
    ingreso_fam_int_corriente = "Ingreso familiar en dólares internacionales corrientes",
    ingreso_fam_soles_2025 = "Ingreso familiar en soles constantes de 2025",
    ingreso_fam_int_2025 = "Ingreso familiar en dólares internacionales de 2025",
    gasto_no_alimentos_fam_usd_corriente = "Gasto familiar no alimentario en dólares estadounidenses corrientes",
    gasto_no_alimentos_fam_int_corriente = "Gasto familiar no alimentario en dólares internacionales corrientes",
    gasto_no_alimentos_fam_soles_2025 = "Gasto familiar no alimentario en soles constantes de 2025",
    gasto_no_alimentos_fam_int_2025 = "Gasto familiar no alimentario en dólares internacionales de 2025"
  )

consolidado %>% saveRDS("consolidado.rds")


