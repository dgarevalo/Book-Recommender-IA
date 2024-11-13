;;; ---------------------------------------------------------
;;; recomendacion.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia_v4.ttl
;;; :Date 06/12/2023 18:42:30

(defclass libro
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot escrito_por
        (type INSTANCE)
        (create-accessor read-write))
    (multislot tiene_genero
        (type INSTANCE)
        (create-accessor read-write))
    (slot complejidad
        (type FLOAT)
        (create-accessor read-write))
    (slot npaginas
        (type INTEGER)
        (create-accessor read-write))
    (slot portable
        (type SYMBOL)
        (create-accessor read-write))
    (slot titulo_libro
        (type STRING)
        (create-accessor read-write))
    (slot valoracion
        (type FLOAT)
        (create-accessor read-write))
    (slot puntuacion
        (type INTEGER) (default 0)
        (create-accessor read-write))
)

(defclass best_seller
    (is-a libro)
    (role concrete)
    (pattern-match reactive)
)

(defclass poco_conocido
    (is-a libro)
    (role concrete)
    (pattern-match reactive)
)

(defclass autor
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot especializado_en
        (type INSTANCE)
        (create-accessor read-write))
    (multislot ha_escrito
        (type INSTANCE)
        (create-accessor read-write))
    (slot nacionalidad
        (type STRING)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot epoca
        (type STRING)
        (create-accessor read-write))
    (slot puntuacion_aparicion
        (type INTEGER) (default 0)
        (create-accessor read-write))
    (slot puntuacion_epoca
        (type INTEGER) (default 0)
        (create-accessor read-write))
)

(defclass genero
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot tiene_libro
        (type INSTANCE)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot puntuacion
        (type INTEGER) (default 0)
        (create-accessor read-write))
    
)

(defclass lector
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot ha_adquirido
        (type INSTANCE)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot nacionalidad
        (type STRING)
        (create-accessor read-write))
)

(definstances instances
    ([a1] of autor
         (ha_escrito  [l1] [l2] [l3] [l4] [l5] [l16] [l17])
         (nacionalidad  "espanol")
         (nombre  "Carlos Ruiz Zafon")
         (epoca 1)
    )

    ([a2] of autor
         (ha_escrito  [l6] [l7] [l8] [l18])
         (nacionalidad  "estadounidense")
         (nombre  "Harpeer Lee")
         (epoca 2)
    )

    ([a3] of autor
         (ha_escrito  [l10] [l9] [l19])
         (nacionalidad  "estadounidense")
         (nombre  "Dan Brown")
         (epoca 3)
    )
    
    ([a4] of autor
         (ha_escrito  [l11] [l12] [l13] [l22])
         (nacionalidad  "britanico")
         (nombre  "J.R.R. Tolkien")
         (epoca 4)
    )

    ([a5] of autor
         (ha_escrito  [l14] [l15] [l20])
         (nacionalidad  "britanico")
         (nombre  "Jane Austen")
         (epoca 5)
    )

    ([a6] of autor
         (ha_escrito  [l21] [l23] [l24])
         (nacionalidad  "britanico")
         (nombre  "Agatha Christie")
         (epoca 6)
    )

    ([a7] of autor
         (ha_escrito  [l25] [l26] [l28])
         (nacionalidad  "frances")
         (nombre  "Jules Verne")
         (epoca 7)
    )

    ([a8] of autor
         (ha_escrito  [l27] [l29] [l30])
         (nacionalidad  "estadounidense")
         (nombre  "Raymond Chandler")
         (epoca 8)
    )

    ([g1] of genero
         (tiene_libro  [l1] [l2] [l3] [l4] [l5] [l16] [l30])
         (nombre  "Misterio")
         
    )

    ([g2] of genero
         (tiene_libro  [l6] [l7] [l8] [l16] [l17] [l30])
         (nombre  "Fantasia")
         
    )

    ([g3] of genero
         (tiene_libro  [l10] [l9] [l15] [l16] [l19] [l30])
         (nombre  "Thriller")
         
    )

    ([g4] of genero
         (tiene_libro [l11] [l12] [l13] [l15] [l17] [l18] [l30])
         (nombre  "Clasica")
         
    )

    ([g5] of genero
         (tiene_libro  [l14] [l15] [l18] [l20] [l30])
         (nombre  "Medieval")
         
    )

    ([g6] of genero
         (tiene_libro  [l21] [l22] [l23] [l24] [l30])
         (nombre  "Aventuras")
         
    )

    ([g7] of genero
         (tiene_libro  [l21] [l22] [l25] [l28] [l30])
         (nombre  "Romantica")
         
    )

    ([g8] of genero
         (tiene_libro  [l22] [l26] [l27] [l30])
         (nombre  "Policiaca")
         
    )

    ([g9] of genero
         (tiene_libro [l28] [l29] [l30])
         (nombre  "Realista")
         
    )

    ([l1] of best_seller
         (escrito_por  [a1])
         (tiene_genero  [g1])
         (complejidad  8.0)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "Cien anyos de soledad")
         (valoracion  4.3)
    )

    ([l2] of best_seller
         (escrito_por  [a1])
         (tiene_genero  [g1])
         (complejidad  4.0)
         (npaginas 245)
         (portable  0)
         (titulo_libro  "Norwegian Wood")
         (valoracion  3.8)
    )

    ([l3] of poco_conocido
         (escrito_por  [a1])
         (tiene_genero  [g1])
         (complejidad  6.0)
         (npaginas 270)
         (portable  1)
         (titulo_libro  "Orgullo y prejuicio")
         (valoracion  4.7)
    )

    ([l4] of best_seller
         (escrito_por  [a1])
         (tiene_genero  [g1])
         (complejidad  8.0)
         (npaginas 305)
         (portable  0)
         (titulo_libro  "Cronica de una muerte anunciada")
         (valoracion  2.9)
    )

    ([l5] of poco_conocido
         (escrito_por  [a1])
         (tiene_genero  [g1])
         (complejidad  10.0)
         (npaginas 220)
         (portable  1)
         (titulo_libro   "La Sombra del Viento")
         (valoracion  3.9)
    )

    ([l6] of best_seller
         (escrito_por  [a2])
         (tiene_genero  [g2])
         (complejidad  6.0)
         (npaginas 330)
         (portable  0)
         (titulo_libro  "El codigo Da Vinci")
         (valoracion  4.8)
    )

    ([l7] of poco_conocido
         (escrito_por  [a2])
         (tiene_genero  [g2])
         (complejidad  2.0)
         (npaginas 2)
         (portable  1)
         (titulo_libro  "1984")
         (valoracion  4.1)
    )

    ([l8] of poco_conocido
         (escrito_por  [a2])
         (tiene_genero  [g2])
         (complejidad  1.0)
         (npaginas 240)
         (portable  0)
         (titulo_libro   "Siddhartha")
         (valoracion  3.2)
    )

    ([l9] of best_seller
         (escrito_por  [a3])
         (tiene_genero  [g3])
         (complejidad  0.0)
         (npaginas 250)
         (portable  1)
         (titulo_libro  "Matar a un ruisenyor")
         (valoracion  4.6)
    )

    ([l10] of best_seller
         (escrito_por  [a3])
         (tiene_genero  [g3])
         (complejidad  3.0)
         (npaginas 280)
         (portable  0)
         (titulo_libro  "El Hobbit")
         (valoracion  3.7)
    )

    ([l11] of poco_conocido
         (escrito_por  [a4])
         (tiene_genero  [g4])
         (complejidad  2.0)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "Los cuentos de Canterbury")
         (valoracion  4.2)
    )
    
    ([l12] of poco_conocido
         (escrito_por  [a4])
         (tiene_genero  [g4])
         (complejidad  7.0)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "Hamlet")
         (valoracion  4.7)
    )

    ([l13] of poco_conocido
         (escrito_por  [a4])
         (tiene_genero  [g4])
         (complejidad  4.6)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "El Gran Gatsby")
         (valoracion  3.1)
    )

    ([l14] of best_seller
         (escrito_por  [a5])
         (tiene_genero  [g5])
         (complejidad  3.9)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "Don Quijote de la Mancha")
         (valoracion  3.9)
    )

    ([l15] of best_seller
         (escrito_por  [a5])
         (tiene_genero  [g3] [g4] [g5])
         (complejidad  1.5)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "Cándido, o el optimismo")
         (valoracion  4.3)
    )

    ([l16] of poco_conocido
         (escrito_por [a1])
         (tiene_genero [g1] [g2] [g3])
         (complejidad  9.0)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "La Divina Comedia")
         (valoracion  4.9)
    )

    ([l17] of poco_conocido
         (escrito_por [a1])
         (tiene_genero [g2] [g4])
         (complejidad  2.1)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "El Paraíso Perdido")
         (valoracion  2.9)
    )

    ([l18] of poco_conocido
         (escrito_por [a2])
         (tiene_genero [g4] [g5])
         (complejidad  6.0)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "El contrato social")
         (valoracion  3.3)
    )

    ([l19] of poco_conocido
         (escrito_por [a3])
         (tiene_genero [g3])
         (complejidad  3.4)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "El extranjero")
         (valoracion  4.7)
    )

    ([l20] of best_seller
         (escrito_por [a5])
         (tiene_genero [g5])
         (complejidad  7.5)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "Madame Bovary")
         (valoracion  4.2)
    )
    
    ([l21] of best_seller
         (escrito_por [a6])
         (tiene_genero [g6] [g7])
         (complejidad  7.0)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "Asesinato en el Orient Express")
         (valoracion  4.5)
    )

    ([l22] of best_seller
         (escrito_por [a4])
         (tiene_genero [g6] [g7] [g8])
         (complejidad  6.0)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "Harry Potter y la piedra filosofal")
         (valoracion  4.8)
    )

    ([l23] of best_seller
         (escrito_por [a6])
         (tiene_genero [g6])
         (complejidad  8.0)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "Perdida")
         (valoracion  3.7)
    )

    ([l24] of best_seller
         (escrito_por [a6])
         (tiene_genero [g6])
         (complejidad  9.0)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "Los pilares de la Tierra")
         (valoracion  4.6)
    )

    ([l25] of best_seller
         (escrito_por [a7])
         (tiene_genero [g7])
         (complejidad  6.0)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "La vuelta al mundo en 80 días")
         (valoracion  4.3)
    )

    ([l26] of poco_conocido
         (escrito_por [a7])
         (tiene_genero [g8])
         (complejidad  4.0)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "El cuaderno de Noah")
         (valoracion  4.0)
    )

    ([l27] of poco_conocido
         (escrito_por [a8])
         (tiene_genero [g8])
         (complejidad  8.0)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "El sueño eterno")
         (valoracion  2.4)
    )

    ([l28] of poco_conocido
         (escrito_por [a7])
         (tiene_genero [g7] [g9])
         (complejidad  3.0)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "El sabueso de los Baskerville")
         (valoracion  3.5)
    )

    ([l29] of poco_conocido
         (escrito_por [a8])
         (tiene_genero [g9])
         (complejidad  9.0)
         (npaginas 315)
         (portable  1)
         (titulo_libro  "Juego de tronos")
         (valoracion  4.9)
    )

    ([l30] of poco_conocido
         (escrito_por [a8])
         (tiene_genero [g1] [g2] [g3] [g4] [g5] [g6] [g7] [g8] [g9])
         (complejidad  8.0)
         (npaginas 315)
         (portable  0)
         (titulo_libro  "El libro de todos los generos")
         (valoracion  1)
    )

    ([lec1] of lector
        (edad 25)
        (nombre "María Rodríguez")
        (ha_adquirido [l1] [l2] [l3] [l4] [l5])
        (nacionalidad  "espanol")
    )

    ([lec2] of lector
        (edad 7)
        (nombre "Mehmet Kaya")
        (ha_adquirido [l1] [l3] [l5] [l7] [l9])
        (nacionalidad  "turco")
    )

    ([lec3] of lector
        (edad 54)
        (nombre "Emily Johnson")
        (ha_adquirido [l4] [l5] [l6] [l7])
        (nacionalidad  "estadounidense")
    )

    ([lec4] of lector
        (edad 38)
        (nombre "Carl Carlson")
        (ha_adquirido [l1] [l2] [l3] [l4] [l5] [l6] [l7] [l8] [l9] [l10] [l11] [l12] [l13] [l14] [l15] [l16] [l17] [l18] [l19] [l20] [l21] [l22] [l23] [l24] [l25] [l26] [l27] [l28] [l29] [l30])
        (nacionalidad  "britanico")
    )

    ([lec5] of lector
        (edad 9)
        (nombre "James Bond")
        (ha_adquirido [l11] [l12] [l14] [l21] )
        (nacionalidad  "britanico")
    )

    ([lec6] of lector
        (edad 16)
        (nombre "Gianluigi Lentini")
        (ha_adquirido [l10] [l12] [l14] [l16] )
        (nacionalidad  "italiano")
    )

)


;;; --------
;;; MODULES 
;;; --------

;;; Modulo para iniciar el programa
(defmodule MAIN
    (export ?ALL)
)

;;; Modulo para obtener los datos de entrada
(defmodule input
    (import MAIN ?ALL)
    (export ?ALL)
)

;;; Modulo para inferir los datos necesarios de entrada
(defmodule inferencia-datos
    (import MAIN ?ALL)
    (import input deftemplate ?ALL)
    (export ?ALL)
)

;;; Modulo para ponderar los libros en base a las preferencias
(defmodule ponderar-libros
    (import MAIN ?ALL)
    (import input deftemplate ?ALL)
    (import inferencia-datos deftemplate ?ALL)
    (export ?ALL)
)

;;; Modulo para recomendar los libros
(defmodule recomendar-libros
    (import MAIN ?ALL)
    (import input deftemplate ?ALL)
    (import inferencia-datos deftemplate ?ALL)
    (import ponderar-libros deftemplate ?ALL)
    (export ?ALL)
)


;;; ------------
;;; DEFTEMPLALTE
;;; ------------

;;; Template para obtener los datos de entrada del usuario
(deftemplate MAIN::entrada-usuario
    (slot lector (type INSTANCE))                                       ;instancia del lector que hace la query
    (slot frec_lectura_anual (type INTEGER)(default -1))                ;libros leidos en el ultimo anyo
    (slot lugar_lectura (type INTEGER)(default -1))                     ;lugar de lectura para la recomendacion
    (slot momento_lectura (type INTEGER)(default -1))                   ;momento de lectura para la recomendacion
    (multislot generos_requiere (type INSTANCE))                        ;conjunto de generos que quiere  
    (slot epoca (type INTEGER)(default -1))                             ;epoca en la que esta ambientada el libro
    (slot best_seller (type INTEGER)(default -1))                       ;preferencias best-seller
)

;;; Template para poder inferir los datos del usuario
(deftemplate MAIN::preferencias-usuario 
    (slot complejidad_recomendacion (type FLOAT) (default -1.0))        ;complejidad de la recomendacion
    (slot portabilidad (type INTEGER)(default -1))                      ;portabilidad segun el lugar de lectura
    (slot gustan_extranjeros (type INTEGER)(default -1))                ;para saber si le gustan autores extranjeros
    (slot observa_valoraciones (type INTEGER)(default -1))              ;para saber si observa valoraciones            
)

;;; Template para poder recomendar los libros al lector
(deftemplate MAIN::libros-recomendar
    (multislot libros (type INSTANCE))                                  ;conjunto de libros a recomendar  
)


;;; ------------
;;; DEFFUNCTIONS 
;;; ------------

;;; Funcion para preguntar al lector en un rango concreto
(deffunction MAIN::pregunta-rango (?preg ?ini ?fi)
    (printout t ?preg " ")
    (bind ?resp (read))
    (printout t crlf)
    (while (not(and(>= ?resp ?ini)(<= ?resp ?fi))) do
        (printout t "Valor no valido en el rango. Por favor, revise su respuesta." crlf)
        (printout t ?preg " ")
        (bind ?resp (read))
        (printout t crlf)
    )
    ?resp
)

;;; Funcion para preguntar al lector y obtener una multi respuesta
(deffunction MAIN::pregunta-lista-valores (?preg $?valores)
    ;valores disponibles
    (printout t ?preg crlf)
    (printout t "Indique su respuesta con el formato: Num0 ... Num" (length$ ?valores) crlf)
    (progn$ (?x ?valores) (printout t "  " ?x-index ". " ?x crlf))
    (printout t "  0. Sin especificar" crlf)
    (printout t "[MULTI] Respuesta: ")
    (bind ?resp (readline))
    (printout t crlf)

    ;tratamiento de la respuesta (separamos por espacios el "getline()")
    (bind ?numeros (str-explode ?resp)) 
    (bind $?lista (create$))
    (progn$ (?var ?numeros) 
        (if (and (integerp ?var) (and (>= ?var 0) (<= ?var (length$ ?valores)))) then 
            (if (not (member$ ?var ?lista)) then 
                (bind $?lista (insert$ $?lista (+ (length$ ?lista) 1) ?var))
            )
        ) 
    )
    ;en caso de haber un 0 en la lista (no especifica genero), la lista solo tendra como valor ese 0
    (if (member$ 0 ?lista) then 
        (bind ?lista (create$ 0))
    )
    ?lista
)


;;; Funcion para obtener la instancia del lector para esa query
(deffunction MAIN::pregunta-instancias-lector (?preg)
    (printout t ?preg crlf)
    ;mostramos nuestras instancias de lectores
    (bind ?instancias (find-all-instances ((?lec lector)) TRUE))
    (progn$ (?x ?instancias) (printout t "  " ?x-index ". " (send ?x get-nombre) crlf))
    (printout t "[UNICA] Respuesta: ")
    (bind ?resp (read))
    (printout t crlf)
    (bind ?ini 1)
    (bind ?fi (length$ ?instancias))

    ;tratamiento de la respuesta
    (while (not(and(>= ?resp ?ini)(<= ?resp ?fi))) do
        (printout t "Lo sentimos, dicho lector no consta en nuestro sistema." crlf)
        (printout t ?preg " ")
        (bind ?resp (read))
        (printout t crlf)
    )
    (bind ?r (nth$ ?resp ?instancias))
    ?r
)

;;; Funcion para obtener el maximo de una lista
(deffunction MAIN::maximo-puntuacion ($?lista)
    (bind ?max -1)
    (bind ?elem nil)
    (progn$ (?var $?lista)
        (bind ?aux (send ?var get-puntuacion))
        (if (> ?aux ?max) then 
            (bind ?max ?aux)
            (bind ?elem ?var)
        )
    )
    ?elem
)

;;; Funcion para obtener el indice del maximo elemento de una lista
(deffunction MAIN::indice-maximo-elemento ($?lista)
    (bind ?max -1)
    (bind ?indice 0)
    (progn$ (?var $?lista)
        (if (> ?var ?max) then 
            (bind ?max ?var)
            (bind ?indice ?var-index)
        )
    )
    ?indice
)


;;; ----
;;; MAIN
;;; ----

;;; Regla para inicializar el programa
(defrule MAIN::initialize "Inicio del programa"
    (declare (salience 10))
    =>
    (printout t "----------------------------------------------------------" crlf)
    (printout t "            Sistema de Recomendacion de Libros            " crlf)
    (printout t "----------------------------------------------------------" crlf)
    (printout t crlf)
    (focus input)
)


;;; -----
;;; INPUT
;;; -----

;;; Regla para la obtencion del lector
(defrule input::obtener-lector "Obtener la instancia del lector"
    (not (entrada-usuario))
    =>
    (bind ?name (pregunta-instancias-lector "¿Cual de los siguientes perfiles quiere escoger?"))
    (assert (entrada-usuario (lector ?name)))
)

;;; Regla para la obtencion de la frecuencia de lectura del lector
(defrule input::obtener-frec-lectura "Obtener frecuencia de lectura del lector"
    ?f <- (entrada-usuario (frec_lectura_anual ?frec))
    (test (< ?frec 0))
    =>
    (bind ?frecuencia (pregunta-rango "¿Cuantos libros te has leido en el ultimo año?" 0 100)) 
    (modify ?f (frec_lectura_anual ?frecuencia))
)

;;; Regla para la obtencion del lugar de lectura
(defrule input::obtener-lugar-lectura "Obtener el lugar de lectura"
    ?l <- (entrada-usuario (lugar_lectura ?lugar))
    (test (< ?lugar 0))
    =>
    (printout t "¿Donde tiene previsto leer el libro?" crlf)
    (printout t "  1. Casa" crlf "  2. Escuela" crlf "  3. Transporte Publico" crlf "  4. Calle" crlf "  5. Otros" crlf)
    (bind ?sitio (pregunta-rango "[UNICA] Respuesta:" 1 5))
    (modify ?l (lugar_lectura ?sitio))
)

;;; Regla para la obtencion del momento de lectura
(defrule input::obtener-momento-lectura "Obtener el momento de lectura"
    ?m <- (entrada-usuario (momento_lectura ?momento))
    (test (< ?momento 0))
    =>
    (printout t "¿En que momento del dia tiene previsto leer el libro?" crlf)
    (printout t "  1. Mañana" crlf "  2. Mediodia" crlf "  3. Tarde" crlf "  4. Noche " crlf "  5. Otros" crlf)
    (bind ?momen (pregunta-rango "[UNICA] Respuesta:" 1 5)) 
    (modify ?m (momento_lectura ?momen))
)

;;; Variable global para ejecutar una sola vez la regla de obtencion de generos
(defglobal
   ?*regla_hecha* = -1
)

;;; Regla para la obtencion de generos que quiere el lector
(defrule input::obtener-generos-requiere "Obtener el genero que quiere en especifico"
    ?g <- (entrada-usuario (generos_requiere $?generos))
    (test (and (< ?*regla_hecha* 0) (eq (length$ ?generos) 0)))
    =>
    
    ;creacion de la lista de generos a partir de todas nuestras instancias
    (bind ?lista_generos (create$))
    (bind ?instancias (find-all-instances ((?gen genero)) TRUE))
    (loop-for-count (?i 1 (length$ ?instancias)) do
        (bind ?nombre (send (nth$ ?i ?instancias) get-nombre))
        (bind $?lista_generos (insert$ $?lista_generos (+ (length$ $?lista_generos) 1) ?nombre))
    )
   
   ;preguntamos al lector los generos que quiere
   (bind ?gxs (pregunta-lista-valores "¿Que genero/s en concreto quieres leer?" ?lista_generos))
   (bind $?gen (create$))
   (if (not(member$ 0 ?gxs)) then
        (progn$ (?var ?gxs)
            (bind $?gen (insert$ $?gen (+ (length$ $?gen) 1) (nth$ ?var ?instancias)))
        )
   )
   (bind ?*regla_hecha* 1)
   (modify ?g (generos_requiere ?gen))
)

;;; Regla para la obtencion de la epoca que quiere el lector
(defrule input::obtener-epoca "Obtener epoca de preferencia"
    ?e <- (entrada-usuario (epoca ?epoca))
    (test (eq ?epoca -1))
    =>
    (printout t "¿A que epoca quieres que pertenezca el libro?" crlf)
    (printout t "  1. Clasica" crlf "  2. Medieval" crlf "  3. Renacentista" crlf "  4. Barroca " crlf)
    (printout t "  5. Neoclasica" crlf "  6. Romantica" crlf "  7. Moderna" crlf "  8. Vanguardista " crlf "  0. Sin especificar" crlf)
    (bind ?ep (pregunta-rango "[UNICA] Respuesta:" 0 8)) 
    (modify ?e (epoca ?ep))
)

;;; Regla para la obtencion de la preferencia de best-sellers
(defrule input::obtener-best-seller "Obtener preferencias best seller"
    ?b <- (entrada-usuario (best_seller ?best))
    (test (< ?best 0))
    =>
    (printout t "Respecto a la popularidad del libro:" crlf)
    (printout t "  1. Quiero que sea un best seller" crlf "  2. Preferiria que fuese un best seller" crlf "  0. Sin especificar" crlf )
    (bind ?bs (pregunta-rango "[UNICA] Respuesta:" 0 2)) 
    (modify ?b (best_seller ?bs))   
)

;;; Regla para cambiar al modulo de la inferencia
(defrule input::cambio-modulo-inferencia "Pasamos a inferir los datos restantes"
    (declare (salience -1))
    =>
    (focus inferencia-datos)
)
    

;;; ----------------
;;; INFERENCIA-DATOS
;;; ----------------

;;; Regla para la inferencia de la portabilidad
(defrule inferencia-datos::inferir-portabilidad "Inferir la portabilidad que prefiere"
    ?l <- (entrada-usuario (lugar_lectura ?lugar))
    (not (preferencias-usuario)) 
    =>
    (bind ?portable 1)
    (if (and (<= ?lugar 2) (>= ?lugar 1)) then
        (bind ?portable 0)    
    )
    (assert (preferencias-usuario (portabilidad ?portable)))
)

;;; Regla para recorrer los libros e inferir el resto de datos necesarios
(defrule inferencia-datos::recorrer-libros "Inferir el resto de datos recorriendo las instancias de libros"
    ?l <- (entrada-usuario (lector ?lec))
    ?gex <- (preferencias-usuario (gustan_extranjeros ?extranjeros))
    ?ov <- (preferencias-usuario (observa_valoraciones ?valo))
    ;comprobamos que todas las varibles esten sin inicializar
    (test (and (< ?extranjeros 0) (< ?valo 0)))
    =>

    ;instancias de los libros del lector
    (bind ?libros_lector (send ?lec get-ha_adquirido))
    ;variables de gustan-autores-extrajeros
    (bind ?nacionalidad_lector (send ?lec get-nacionalidad))
    (bind ?num_nacion_dif 0)
    ;variables de oberva-valoraciones
    (bind ?val_total 0)
    
    (progn$ (?var ?libros_lector) 
        ;mirar si autor es extranjero
        (bind ?autor_libro (send ?var get-escrito_por))
        (bind ?nacionalidad_autor (send ?autor_libro get-nacionalidad))
        (if (neq ?nacionalidad_autor ?nacionalidad_lector) then (bind ?num_nacion_dif (+ ?num_nacion_dif 1)))

        ;mirar si observa valoraciones
        (bind ?val_total (+ (send ?var get-valoracion) ?val_total))

        ;mirar preferencias de generos
        (bind $?gen (send ?var get-tiene_genero))
        (progn$ (?g ?gen)
            (bind ?nueva_puntuacion (+ (send ?g get-puntuacion) 1))
            (modify-instance ?g (puntuacion ?nueva_puntuacion))  
        )
        ;mirar preferenicas de autores
        (bind ?nueva_puntuacion (+ (send ?autor_libro get-puntuacion_aparicion) 1))
        (modify-instance ?autor_libro (puntuacion_aparicion ?nueva_puntuacion))
        
        ;miramos preferencias de epocas
        (bind ?epoca_libro (send ?autor_libro get-epoca))
        (bind ?autores (find-all-instances ((?a autor)) TRUE))
        (progn$ (?aut ?autores)
            (if (eq (send ?aut get-epoca) ?epoca_libro) then
                (progn
                    (bind ?nueva_puntuacion (+ (send ?autor_libro get-puntuacion_epoca) 1))
                    (modify-instance ?autor_libro (puntuacion_epoca ?nueva_puntuacion))
                )
            )
        )
    )
    ;modifies
    ;miramos si gustan autores extranjeros
    (bind ?le_gustan 0)
    (if(>= (/ (* 100 ?num_nacion_dif) (length$ ?libros_lector)) 50) then (bind ?le_gustan 1))
    (modify ?gex (gustan_extranjeros ?le_gustan))

    ;miramos si observa valoraciones
    (bind ?las_observa 0)
    (if (>= (/ ?val_total (length$ ?libros_lector)) 4.0) then (bind ?las_observa 1))
    (modify ?ov (observa_valoraciones ?las_observa))
)

;;; Regla para inferir la especializacion del autor en base a un genero
(defrule inferencia-datos::inferir-genero-autor "Inferir el genero especializado del autor"
    
    =>
    ;lista de generos de nuestro sistema
    (bind ?generos (find-all-instances ((?g genero)) TRUE))
    
    ;recuento de apariciones de los generos para cada autor de nuestro sistema
    (bind ?autores (find-all-instances ((?a autor)) TRUE))
    (progn$ (?var ?autores)
        ;lista que guardara las aparciones de los generos escritos por un autor
        (bind ?apariciones (create$))
        (progn$ (?ap ?generos)
            (bind $?apariciones (insert$ $?apariciones (+ (length$ $?apariciones) 1) 0))
        )
       
        ;para cada libro que ha escrito, suma apariciones en sus generos 
        (bind ?libros_escritos (send ?var get-ha_escrito))
        (progn$ (?lib ?libros_escritos)
            (bind $?generos_libro (send ?lib get-tiene_genero))
            (progn$ (?gen_libro $?generos_libro)
          
               
                (bind ?iterador 1)
                (bind ?encontrado 0)
                ;encontramos la casilla de ?generos que le corresponde a cada genero del libro escrito por el autor
                (progn$ (?g ?generos)
                    (if (and(neq ?g ?gen_libro) (eq ?encontrado 0)) then (bind ?iterador (+ ?iterador 1))
                    else (bind ?encontrado 1))    
                )
               
                ;sumamos una aparcion a la casilla de aparciones asociada al genero del libro escrito por el autor
                (bind $?apariciones (replace$ $?apariciones ?iterador ?iterador (+ (nth$ ?iterador $?apariciones) 1)))
            )
        )
        
        ;sacamos el indice donde se guarda el valor maximo de la lista
        (bind ?ind_max (indice-maximo-elemento $?apariciones))

        ;asignamos como genero especializado_en al autor
        (modify-instance ?var (especializado_en (nth$ ?ind_max $?generos)))
    )
)

;;; Regla para inferir la complejidad segun los datos del usuario
(defrule inferencia-datos::inferir-complejidad "Inferir la complejidad a recomendar para cada usuario"
    ?l <- (entrada-usuario (lector ?lec))
    ?f <- (entrada-usuario (frec_lectura_anual ?frec))
    ?lug <- (entrada-usuario (lugar_lectura ?lugar))
    ?m <- (entrada-usuario (momento_lectura ?momen))
    ?c <- (preferencias-usuario (complejidad_recomendacion ?comp))
    (test (< ?comp 0))
    =>
    ;edad del lector
    (bind ?ed (send ?lec get-edad))

    ;la complejidad obtenida sera COTA SUPERIOR de la complejidad del libro
    ;EDAD: [7.0, 12.0) -> +1             [12.0, 15.0) -> +2       [15.0, 18.0) -> +3       [18.0, +oo) -> +4
    ;FREC: [1,3) -> +1                   [4,10) -> +1.5           [10.0, +oo) -> +2
    ;LUGAR: t.publico o calle -> +0      otros ->  +1            casa o escuela -> +2
    ;MOMEN: noche -> +0               mediodia u otros -> +1      manana o tarde -> +2

    ;sumamos complejidad en funcion de la edad del lector
    (bind ?com 0)
    (if (and (>= ?ed 7)(< ?ed 12)) then (bind ?com (+ ?com 1)) 
        else (if (and (>= ?ed 12) (< ?ed 15)) then (bind ?com (+ ?com 2))
                else (if (and (>= ?ed 15) (< ?ed 18)) then (bind ?com (+ ?com 3))
                    else (if (>= ?ed 18) then (bind ?com (+ ?com 4)))
                )
            )
    )
    
    ;sumamos complejidad por frecuencia de lectura anual
    (if (and (>= ?frec 1)(< ?frec 3)) then (bind ?com (+ ?com 1)) 
        else (if (and (>= ?frec 4) (< ?frec 10)) then (bind ?com (+ ?com 1.5))
                else (if (>= ?frec 10) then (bind ?com (+ ?com 2)))
            )
    )

    ;sumamos complejidad por lugar de lectura
    (if (and (eq ?lugar 1) (eq ?lugar 2)) then (bind ?com (+ ?com 2)) 
        else (if (eq ?lugar 5) then (bind ?com (+ ?com 1)))
    )

    ;sumamos complejidad por momento de lectura
    (if (or (eq ?momen 1)(eq ?momen 3)) then (bind ?com (+ ?com 2)) 
        else (if (or (eq ?momen 2) (eq ?momen 5)) then (bind ?com (+ ?com 1)))
    )
    (modify ?c (complejidad_recomendacion ?com))
)

;;; Regla para cambiar al modulo de la ponderacion
(defrule inferencia-datos::cambio-modulo-ponderacion "Pasamos a ponderar los libros"
    (declare (salience -2))
    =>
    (focus ponderar-libros)
)
    

;;; ---------------
;;; PONDERAR-LIBROS
;;; ---------------

;;; Regla para ponderar adecuadamente los libros de nuestro sistema
(defrule ponderar-libros::ponderacion "Hacemos la ponderacion de los libros"
    ?l <- (entrada-usuario (lector ?lec))
    ?v <- (preferencias-usuario (observa_valoraciones ?obs_valoraciones))
    ?ex <- (preferencias-usuario (gustan_extranjeros ?gustan_autores_ex)) 
    ?b <- (entrada-usuario (best_seller ?opcion_best_seller))
    ?p <- (preferencias-usuario (portabilidad ?opcion_portabilidad))
    ?c <- (preferencias-usuario (complejidad_recomendacion ?comp))
    =>
    (bind ?todos_libros (find-all-instances ((?lib libro)) TRUE))
    (bind ?todos_best_sellers (find-all-instances ((?best best_seller)) TRUE))
    (progn$ (?var ?todos_libros)
        ;ponderamos valoraciones
        (if (and (eq ?obs_valoraciones 1) (>= (send ?var get-valoracion) 4)) then
            (progn
                (bind ?nueva_puntuacion (+ (send ?var get-puntuacion) 10))
                (modify-instance ?var (puntuacion ?nueva_puntuacion))
            )
        )
        ;ponderamos autores extranjeros
        (bind ?autor_libro (send ?var get-escrito_por))
        (if (and (eq ?gustan_autores_ex 1) (neq (send ?autor_libro get-nacionalidad) (send ?lec get-nacionalidad))) then
            (progn
                (bind ?nueva_puntuacion (+ (send ?var get-puntuacion) 10))
                (modify-instance ?var (puntuacion ?nueva_puntuacion))
            )
        )
        ;ponderamos best-sellers (si los prefiere)
        (if (and (eq ?opcion_best_seller 2) (member$ ?var ?todos_best_sellers)) then
            (progn
                (bind ?nueva_puntuacion (+ (send ?var get-puntuacion) 10))
                (modify-instance ?var (puntuacion ?nueva_puntuacion))
            )
        )
        ;ponderamos portabilidad
        (if (and (eq ?opcion_portabilidad 1) (send ?var get-portable)) then
            (progn
                (bind ?nueva_puntuacion (+ (send ?var get-puntuacion) 10))
                (modify-instance ?var (puntuacion ?nueva_puntuacion))
            )
        )
        ;ponderamos complejidad -> cota superior
        (bind ?comp_libro (send ?var get-complejidad))
        (if (>= ?comp ?comp_libro) then
            (progn
                (bind ?nueva_puntuacion (+ (send ?var get-puntuacion) 20))
                (modify-instance ?var (puntuacion ?nueva_puntuacion))
            )
            else (if (>= (+ ?comp 2) ?comp_libro) then
                (progn 
                    (bind ?nueva_puntuacion (+ (send ?var get-puntuacion) 15))
                    (modify-instance ?var (puntuacion ?nueva_puntuacion))
                )
            )
        )
        ;ponderamos generos
        (bind $?gen (send ?var get-tiene_genero))
        (progn$ (?g ?gen)
                (bind ?nueva_puntuacion (+ (send ?var get-puntuacion) (send ?g get-puntuacion)))
                (modify-instance ?var (puntuacion ?nueva_puntuacion))
        )
        ;ponderamos autor
        (bind ?total_autor (+ (send ?autor_libro get-puntuacion_aparicion) (send ?autor_libro get-puntuacion_epoca)))
        (bind ?nueva_puntuacion (+ (send ?var get-puntuacion) ?total_autor))
        (modify-instance ?var (puntuacion ?nueva_puntuacion))
    )

)

;;; Regla para ponderar los generos de los autores preferidos
(defrule ponderar-libros::ponderar-generos-autores_preferidos "Ponderamos generos en los que se especializan los autores preferidos del lector"
     ?l <- (entrada-usuario (lector ?lec))
     =>
    (bind ?todos_libros (find-all-instances ((?lib libro)) TRUE))
    (progn$ (?var ?todos_libros)
        (bind ?autor_libro (send ?var get-escrito_por))
        (bind ?total_autor (+ (send ?autor_libro get-puntuacion_aparicion) (send ?autor_libro get-puntuacion_epoca)))
        (bind ?libros_lec (send ?lec get-ha_adquirido))

        ;porcentaje de aparicion del autor en los libros adquiridos por el lector 
        (bind ?porcentaje_actor (/ (* (send ?autor_libro get-puntuacion_aparicion) 100) (length$ ?libros_lec) ))
        (bind ?generos (find-all-instances ((?genr genero)) TRUE))
        (if (and ( >= ?porcentaje_actor 15) (>= ?total_autor 10)) then
            (progn$ (?gen ?generos)
                (if (eq ?gen (send ?autor_libro get-especializado_en)) then
                    (progn$ (?g ?generos)
                        (bind ?nueva_puntuacion (+ (send ?g get-puntuacion) 1))
                        (modify-instance ?g (puntuacion ?nueva_puntuacion))  
                    )
                )
            )
        )
    )
)

;;; Regla para cambiar al modulo de la recomendacion
(defrule ponderar-libros::cambiar-modulo-recomendacion "Pasamos a recomendar los libros"
    (declare (salience -3))
    =>
    (focus recomendar-libros)
)


;;; -----------------
;;; RECOMENDAR-LIBROS
;;; -----------------

;;; Regla para seleccionar los libros a recomendar aplicando las exigencias del lector
(defrule recomendar-libros::seleccionar-recomendacion "Hacemos la recomendacion de los libros"
    (not (libros-recomendar))
    ?b <- (entrada-usuario (best_seller ?opcion_best_seller))
    ?g <- (entrada-usuario (generos_requiere $?generos))
    ?e <- (entrada-usuario (epoca ?epoca))
    =>
    (printout t crlf crlf crlf)
    ;añadimos a libros_ok ssi se puede recomendar
    (bind $?libros_ok (create$))
    (bind ?libros (find-all-instances ((?lib libro)) TRUE))
    (bind ?todos_best_sellers (find-all-instances ((?best best_seller)) TRUE))
    ;si aun quedan libros por recomendar
    (while (and (< (length$ ?libros_ok) 3) (> (length$ ?libros) 0))

        ;obtenemos el top de nuestra 'priority queue'
        (bind ?max_actual (maximo-puntuacion $?libros))
        (bind ?libros (delete-member$ $?libros ?max_actual))

        ;exigencias del lector
        (bind ?cumple_seller 1)
        (bind ?cumple_generos 1)
        (bind ?cumple_epoca 1)
        
        ;descartamos si requiere bestseller y no es best-seller
        (if (and (eq ?opcion_best_seller 1) (not (member$ ?max_actual ?todos_best_sellers))) then (bind ?cumple_seller 0)
        ;descartamos si se requiere algun genero y no tiene los generos requeridos
        else (if (and (> (length$ ?generos) 0) (not(subsetp $?generos (send ?max_actual get-tiene_genero)))) then (bind ?cumple_generos 0)
        ;descartamos si se requiere alguna epoca y el libro no es de esta
        else (if (and (neq ?epoca 0) (neq ?epoca (send (send ?max_actual get-escrito_por) get-epoca))) then (bind ?cumple_epoca 0))))
        
        ;se añade el libro para recomendar
        (if (and (eq ?cumple_epoca 1) (and (eq ?cumple_generos 1) (eq ?cumple_seller 1))) then 
            (bind $?libros_ok (insert$ $?libros_ok (+ (length$ $?libros_ok) 1) ?max_actual)))  
    )
   
    (assert (libros-recomendar (libros ?libros_ok)))
)

;;; Regla para imprimir los libros recomendados
(defrule recomendar-libros::imprimir-recomendacion "Imprimimos la recomendacion de los libros"
    ?l <- (libros-recomendar (libros $?libros))

    ?lx <- (entrada-usuario (lector ?lec))
    ?f <- (entrada-usuario (frec_lectura_anual ?frec))
    ?lug <- (entrada-usuario (lugar_lectura ?lugar))
    ?m <- (entrada-usuario (momento_lectura ?momen))
    ?g <- (entrada-usuario (generos_requiere $?generos))
    ?e <- (entrada-usuario (epoca ?epoca))
    ?b <- (entrada-usuario (best_seller ?bestsell))
    
    ?c <- (preferencias-usuario (complejidad_recomendacion ?comp))
    ?p <- (preferencias-usuario (portabilidad ?port))
    ?a <- (preferencias-usuario (gustan_extranjeros ?autex))
    ?v <- (preferencias-usuario (observa_valoraciones ?valoraciones))
    =>
    (printout t "----------------------------------------------------------" crlf)
    (printout t "                       RECOMENDACION                      " crlf)
    (printout t "----------------------------------------------------------" crlf)
    (printout t crlf)
    
    ;mostramos por pantalla los datos preguntados al lector
    (printout t "-> Especificaciones del lector:" crlf)
    (printout t "  · Nombre: " (send ?lec get-nombre) crlf)
    (printout t "  · Edad: " (send ?lec get-edad) " años" crlf)
    (printout t "  · Nacionalidad: " (send ?lec get-nacionalidad) crlf)
    (printout t "  · Libros leidos: " ?frec " al año" crlf)
    (printout t "  · Lugar de lectura: " )
    (if (eq ?lugar 1) then (printout t "Casa" crlf) 
    else (if (eq ?lugar 2) then (printout t "Escuela" crlf) 
    else (if (eq ?lugar 3) then (printout t "Transporte Publico" crlf) 
    else (if (eq ?lugar 4) then (printout t "Calle" crlf) 
    else (if (eq ?lugar 5) then (printout t "Otros" crlf))))))
    (printout t "  · Momento de lectura: ")
    (if (eq ?momen 1) then (printout t "Mañana" crlf) 
    else (if (eq ?momen 2) then (printout t "Mediodia" crlf) 
    else (if (eq ?momen 3) then (printout t "Tarde" crlf) 
    else (if (eq ?momen 4) then (printout t "Noche" crlf) 
    else (if (eq ?momen 5) then (printout t "Otros" crlf))))))
    (printout t "  · Generos requiere: ")
    (if (eq (length$ $?generos) 0) then (printout t "Sin especificar") else
    (progn$ (?gx ?generos)
        (printout t (send ?gx get-nombre))
        (if (neq ?gx-index (length$ ?generos)) then (printout t ", "))    
    ))
    (printout t crlf)
    (printout t "  · Epoca requiere: ")
    (if (eq ?epoca 1) then (printout t "Clasica" crlf) 
    else (if (eq ?epoca 2) then (printout t "Medieval" crlf) 
    else (if (eq ?epoca 3) then (printout t "Renacentista" crlf) 
    else (if (eq ?epoca 4) then (printout t "Barroca" crlf) 
    else (if (eq ?epoca 5) then (printout t "Neoclasica" crlf)
    else (if (eq ?epoca 6) then (printout t "Romantica" crlf)
    else (if (eq ?epoca 7) then (printout t "Moderna" crlf)
    else (if (eq ?epoca 8) then (printout t "Vanguardista" crlf)
    else (if (eq ?epoca 0) then (printout t "Sin especificar" crlf))))))))))
    (printout t "  · Best-seller: ")
    (if (eq ?bestsell 0) then (printout t "Indiferente" crlf) 
    else (if (eq ?bestsell 1) then (printout t "Lo quiere" crlf) 
    else (if (eq ?bestsell 2) then (printout t "Lo prefiere" crlf))))
    
    ;mostramos por pantalla los datos inferidos del lector
    (printout t crlf "-> Observaciones: " crlf)
    (printout t "  · Portabilidad recomendacion: " (if (eq ?port 1) then (printout t "Si") else (printout t "No")) crlf)
    (printout t "  · Complejidad resultante: " ?comp crlf)
    (printout t "  · Le gustan autores extranjeros: " (if (eq ?autex 1) then (printout t "Si") else (printout t "No")) crlf)
    (printout t "  · Observa valoraciones: " (if (eq ?valoraciones 1) then (printout t "Si") else (printout t "No")) crlf crlf )
    (printout t "----------------------------------------------------------" crlf crlf)

    ;mostramos la informacion de los libros recomendados
    (bind ?todos_best_sellers (find-all-instances ((?best best_seller)) TRUE))
    (if (neq (length$ ?libros) 0) then (printout t "Nuestro sistema ha analizado el caso particular y tiene el gusto de recomendarle:" crlf crlf))
    (progn$ (?x ?libros)
        (bind ?autor (send ?x get-escrito_por))
        (printout t "  " ?x-index ". " (send ?x get-titulo_libro) " - " (send ?autor get-nombre) crlf)
        (printout t "    · Nacionalidad autor: " (send ?autor get-nacionalidad) crlf)
        (printout t "    · Numero de paginas: " (send ?x get-npaginas) crlf)
        (bind ?porta (send ?x get-portable))
        (printout t "    · Portabilidad: " (if (eq ?porta 1) then (printout t "Si") else (printout t "No")) crlf)
        (bind ?gene (send ?x get-tiene_genero))
        (printout t "    · Genero" )
        (if (> (length$ ?gene) 1) then (printout t "s")) 
        (printout t ": ")
        (progn$ (?gx ?gene)
            (printout t (send ?gx get-nombre))
            (if (neq ?gx-index (length$ ?gene)) then (printout t ", "))    
        )
        (printout t crlf)
        (bind ?ep (send ?autor get-epoca))
        (printout t "    · Epoca: ")
        (if (eq ?ep 1) then (printout t "Clasica" crlf) 
        else (if (eq ?ep 2) then (printout t "Medieval" crlf) 
        else (if (eq ?ep 3) then (printout t "Renacentista" crlf) 
        else (if (eq ?ep 4) then (printout t "Barroca" crlf) 
        else (if (eq ?ep 5) then (printout t "Neoclasica" crlf)
        else (if (eq ?ep 6) then (printout t "Romantica" crlf)
        else (if (eq ?ep 7) then (printout t "Moderna" crlf)
        else (if (eq ?ep 8) then (printout t "Vanguardista" crlf)
        else (if (eq ?ep 0) then (printout t "Sin especificar" crlf))))))))))
        (printout t "    · Complejidad: " (send ?x get-complejidad) crlf)
        (printout t "    · Valoracion: " (send ?x get-valoracion) crlf)
        (printout t "    · Best-seller: " )
        (if (member$ ?x $?todos_best_sellers) then (printout t "Si" crlf) else (printout t "No" crlf))
        (printout t crlf)
    )

    ;en caso de no cumplir con los requerimientos
    (if (< (length$ ?libros) 3) then
        (progn
            (if (eq (length$ ?libros) 1) then
                (progn
                    (printout t "** Lo sentimos, solo hemos conseguido encontrar "(length$ ?libros)" libro que se ajuste a tus requerimientos" crlf)
                    (printout t "Aqui tienes los "(- 3 (length$ ?libros))" bestsellers que mas se ajustan a tus preferencias:" crlf crlf)
                )
            else
                (progn
                    (if (eq (length$ ?libros) 2) then
                        (progn
                            (printout t "** Lo sentimos, hemos conseguido encontrar "(length$ ?libros)" libros que se ajusten a tus requerimientos" crlf)
                            (printout t "Aqui tienes el bestseller que mas se ajusta a tus preferencias:" crlf crlf)
                        )
                    else
                        (progn
                            (printout t "** Lo sentimos, hemos conseguido encontrar "(length$ ?libros)" libros que se ajusten a tus requerimientos" crlf)
                            (printout t "Aqui tienes "(- 3 (length$ ?libros))" bestsellers que mas se ajustan a tus preferencias:" crlf crlf)
                        )
                    )
                )
            )

            ;obtenemos los best-sellers restantes a recomendar
            (bind $?libros_ok (create$))
            (bind ?todos_libros (find-all-instances ((?lib libro)) TRUE))
            (while (and (< (length$ ?libros_ok) (- 3 (length$ ?libros))) (> (length$ ?todos_libros) 0))
                (bind ?max_actual (maximo-puntuacion $?todos_libros))
                (bind ?todos_libros (delete-member$ $?todos_libros ?max_actual))
                (while (member$ ?max_actual $?libros)
                    (bind ?max_actual (maximo-puntuacion $?todos_libros))
                    (bind ?todos_libros (delete-member$ $?todos_libros ?max_actual))
                )
                (if  (member$ ?max_actual ?todos_best_sellers) then
                    (bind $?libros_ok (insert$ $?libros_ok (+ (length$ $?libros_ok) 1) ?max_actual)))
            )

            ;mostramos por pantalla la informacion de los nuevos libros obtenidos
            (progn$ (?x $?libros_ok)
                (bind ?autor (send ?x get-escrito_por))
                (printout t "  " ?x-index ". " (send ?x get-titulo_libro) " - " (send ?autor get-nombre) crlf)
                (printout t "    · Nacionalidad autor: " (send ?autor get-nacionalidad) crlf)
                (printout t "    · Numero de paginas: " (send ?x get-npaginas) crlf)
                (bind ?porta (send ?x get-portable))
                (printout t "    · Portabilidad: " (if (eq ?porta 1) then (printout t "Si") else (printout t "No")) crlf)
                (bind ?gene (send ?x get-tiene_genero))
                (printout t "    · Genero" )
                (if (> (length$ ?gene) 1) then (printout t "s")) 
                (printout t ": ")
                (progn$ (?gx ?gene)
                    (printout t (send ?gx get-nombre))
                    (if (neq ?gx-index (length$ ?gene)) then (printout t ", "))    
                )
                (printout t crlf)
                (bind ?ep (send ?autor get-epoca))
                (printout t "    · Epoca: ")
                (if (eq ?ep 1) then (printout t "Clasica" crlf) 
                else (if (eq ?ep 2) then (printout t "Medieval" crlf) 
                else (if (eq ?ep 3) then (printout t "Renacentista" crlf) 
                else (if (eq ?ep 4) then (printout t "Barroca" crlf) 
                else (if (eq ?ep 5) then (printout t "Neoclasica" crlf)
                else (if (eq ?ep 6) then (printout t "Romantica" crlf)
                else (if (eq ?ep 7) then (printout t "Moderna" crlf)
                else (if (eq ?ep 8) then (printout t "Vanguardista" crlf)
                else (if (eq ?ep 0) then (printout t "Sin especificar" crlf))))))))))
                (printout t "    · Complejidad: " (send ?x get-complejidad) crlf)
                (printout t "    · Valoracion: " (send ?x get-valoracion) crlf)
                (printout t "    · Best-seller: " )
                (if (member$ ?x $?todos_best_sellers) then (printout t "Si" crlf) else (printout t "No" crlf))
                (printout t crlf)
            )
        )
    )
)

