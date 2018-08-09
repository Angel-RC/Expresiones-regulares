# Diarios 
diarios <- c("INFORMACIÓN",   
             "EL MUNDO",      
             "LAS PROVINCIAS",
             "Valenciaplaza", 
             "LA VANGUARDIA", 
             "LEVANTE",       
             "Eldiario.es",   
             "LA RAZÓN",      
             "MEDITERRÁNEO",  
             "EL PAÍS",       
             "Alicanteplaza", 
             "ABC"   )
# Formatos de paginación para cada diario
formato <- c("^(\\d{2}|Suplemento)$",
             "^(\\d{2}|Suplemento|A|V|CS)$",
             "^(\\d{2}|Suplemento|Alacant|Costera|Horta|Marina|Ribera|Safor|Vall)$",
             "^(\\d{1,3} p[.]|Web ed[.]|Suplemento)$",
             "^(\\d{1,3} p[.]|Web ed[.]|\\d{2}|Suplemento)$",
             "^(\\d{2}|Suplemento|Castelló|Horta|Ribera|Safor|Costera[/]Canal[/]Vall d'Albaida|Camp de Morvedre)$",
             "^(\\d{1,3} p[.]|Web ed[.]|Suplemento)$",
             "^(\\d{1,3} p[.]|Web ed[.]|\\d{2}|CV|Murcia|Suplemento)$",
             "^(\\d{2}|Suplemento)$",
             "^(\\d{1,3} p[.]|Web ed[.]|\\d{2}|Suplemento)$",
             "^(\\d{1,3} p[.]|Web ed[.]|Suplemento)$",
             "^(\\d{1,3} p[.]|Web ed[.]|\\d{2}|Suplemento)$")



formato.diarios <- data.frame(diarios,formato)
