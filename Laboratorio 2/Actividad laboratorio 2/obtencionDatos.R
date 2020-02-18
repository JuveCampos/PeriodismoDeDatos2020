# Recolección de Tweets
# Tema: Fátima

# Librerias
library(rtweet)

## Buscar 18000 tweets usando la palabra clave: Fátima
rt <- search_tweets('"Fátima"', n = 18000, include_rts = FALSE, retryonratelimit = TRUE)
openxlsx::write.xlsx(rt, "datos.xlsx")
