;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;BIBLIOTECA



(require (lib "Graphics.ss""graphics"))  ;;Inicio la Biblioteca Grafica
(open-graphics)                          ;;Abro la biblioteca


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;VENTANAS



;;Requiero de dos ventanas una de ellas será la que "Dibuja" la información
;;para que mi segunda ventana lo copie de este modo se ve mas fluido el movimiento de mi personaje

(define BackLand (open-pixmap "Copy" 1350 600))                     ;;Defino un segundo viewport
(define FrontLand (open-viewport "SuperMario.Bros" 1350 600))       ;;Defino un primer viewport (Ventana)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;VECTORES

;;Defino mis vectores y los cargo con los sprites de mi personaje

(define Izquierda (vector "Izquierda/0.png" "Izquierda/1.png" "Izquierda/2.png" "Izquierda/3.png" "Izquierda/4.png" "Izquierda/5.png"))

(define Derecha (vector "Derecha/0.png" "Derecha/1.png" "Derecha/2.png" "Derecha/3.png" "Derecha/4.png" "Derecha/5.png"))

(define Abajo-derecha (vector "Abajo-derecha/0.png" "Abajo-derecha/1.png" "Abajo-derecha/2.png"))

(define Arriba-Izquierda (vector "Arriba-Izquierda/0.png" "Arriba-Izquierda/1.png" "Arriba-Izquierda/2.png"
                                 "Arriba-Izquierda/3.png" "Arriba-Izquierda/4.png" "Arriba-Izquierda/5.png"
                                 "Arriba-Izquierda/6.png" "Arriba-Izquierda/7.png" "Arriba-Izquierda/8.png"
                                 "Arriba-Izquierda/9.png" "Arriba-Izquierda/10.png" "Arriba-Izquierda/11.png"
                                 "Arriba-Izquierda/12.png" "Arriba-Izquierda/13.png" "Arriba-Izquierda/14.png"
                                 "Arriba-Izquierda/15.png" "Arriba-Izquierda/16.png" "Arriba-Izquierda/17.png"
                                 "Arriba-Izquierda/18.png" "Arriba-Izquierda/19.png" "Arriba-Izquierda/20.png"
                                 "Arriba-Izquierda/21.png" "Arriba-Izquierda/22.png" "Arriba-Izquierda/23.png"
                                 "Arriba-Izquierda/24.png" "Arriba-Izquierda/25.png" "Arriba-Izquierda/26.png"))

(define Arriba-derecha (vector "Arriba-derecha/0.png" "Arriba-derecha/1.png" "Arriba-derecha/2.png"
                               "Arriba-derecha/3.png" "Arriba-derecha/4.png" "Arriba-derecha/5.png"
                               "Arriba-derecha/6.png" "Arriba-derecha/7.png" "Arriba-derecha/8.png"
                               "Arriba-derecha/9.png" "Arriba-derecha/10.png" "Arriba-derecha/11.png"
                               "Arriba-derecha/12.png" "Arriba-derecha/13.png" "Arriba-derecha/14.png"
                               "Arriba-derecha/15.png" "Arriba-derecha/16.png" "Arriba-derecha/17.png"
                               "Arriba-derecha/18.png" "Arriba-derecha/19.png" "Arriba-derecha/20.png"
                               "Arriba-derecha/21.png" "Arriba-derecha/22.png" "Arriba-derecha/23.png"
                               "Arriba-derecha/24.png" "Arriba-derecha/25.png" "Arriba-derecha/26.png"))

(define CI (vector "#CI/0.png" "#CI/1.png"))

(define Coins (vector "L_Coins/G0.png" "L_Coins/G1.png" "L_Coins/G2.png" "L_Coins/G3.png"))

(define PassedLevel (vector "PassLevel/0.png" "PassLevel/1.png" "PassLevel/2.png" "PassLevel/3.png" "PassLevel/4.png"
                            "PassLevel/5.png" "PassLevel/6.png" "PassLevel/7.png"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;FUNCIONES RECURSIVAS Y CASOS ESPECIALES



;;Función: Reset

;;Objetivo: Regresar el posicionador a 0

;;Variables: P (poscionador), vctr (vector)


;;DESCRIPCIÓN:

(define(Reset P vctr)              ;;Defino una función que "refresca" el posicionador de mis vectores
  (if(= P (vector-length vctr))    ;;Uso como condición de parada el tamaño del vector para poder usarla en todos mis vectores
     0                             ;;#t es 0 para que la posición se reinicie
     P))                           ;;#f no ha llegado al fin del vector


;;Función: DMr0 (Sprites De Mario)

;;Objetivo: Mostrar los sprites de Mario en diferentes posiciones usando vectores

;;Variables: vctr (vector), P (posicionador), PosX (Eje X), PosY (Eje Y)


;;DESCRIPCIÓN:

;;Defino la función DMr0 con las variables vctr P PosX PosY
;;uso "draw-pixmap" para dibujar el mapa
;;uso "draw-pixmap-posn" con "vector-ref" un sprite del vector recivido en la posición P en mi ventana de dibujo en las posicones PosX y PosY
;;copio el mapa y el sprite en mi ventana principal con "copy-viewport"

(define(DMr0 vctr P PosX PosY)
  ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
  (((draw-pixmap-posn (vector-ref vctr P) 'unknown/mask) BackLand) (make-posn PosX PosY))
  (copy-viewport BackLand FrontLand)
  )

;;Función: ZeroClsAI-I (Colisión para cero Arriba a la Izquierda e Izquierda)

;;Objetivo: Simular el un choque con el inicio del mapa

;;Variables: PosX (Eje X), PosY (Eje Y)


;;DESCRIPCIÓN:

;;Defino la función ZeroClsAI-I con las variables PosX y PosY
;;uso "draw-pixmap" para dibujar el mapa
;;uso "draw-pixmap-posn" con el sprite "Izquierda/0.png" restando 10 en el Eje X para que de la impresión de que Mario se "Choca"
;;finalmente uso "copy-viewport", invoco la función "Teclado" enviando 0 para que Mario no se salga del mapa y cierro mi función


(define(ZeroClsAI-I PosX PosY)
  ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
  (((draw-pixmap-posn "Izquierda/0.png" 'unknown/mask) BackLand) (make-posn (- PosX 10) PosY))
  (((draw-pixmap-posn "Land/dialogo.png" 'unknown/mask) BackLand) (make-posn 80 80))
  ((draw-string BackLand) (make-posn 130 200) "Yoshi esta para el otro lado" "Black")
  (copy-viewport BackLand FrontLand)
  (Teclado 0 PosY 0)
  )

;;Función: ClsI  (Colisiciones Izquierda)

;;Objetivo: Simular el un choque con los objetos del mapa en el sentido izquierdo

;;Variables: PosX (Eje X), PosY (Eje Y)


;;DESCRIPCIÓN:

;;Defino la función ClsI con las variables PosX y PosY
;;uso "draw-pixmap" para dibujar el mapa
;;uso "draw-pixmap-posn" con el sprite "Derecha/0.png" sumando 10 en el Eje X para que de la impresión de que Mario se "Choca"
;;finalmente uso "copy-viewport", invoco la función "Teclado" y cierro mi función

(define(ClsI PosX PosY)
  ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
  (((draw-pixmap-posn "Derecha/0.png" 'unknown/mask) BackLand) (make-posn (+ PosX 10) PosY))
  (copy-viewport BackLand FrontLand)
  (Teclado PosX PosY 0)
  )

;;Función: ClsD  (Colisiciones Derecha)

;;Objetivo: Simular el un choque con los objetos del mapa en el sentido derecho

;;Variables: PosX (Eje X), PosY (Eje Y)


;;DESCRIPCIÓN:

;;Defino la función ClsD con las variables PosX y PosY
;;uso "draw-pixmap" para dibujar el mapa
;;uso "draw-pixmap-posn" con el sprite "Izquierda/0.png" restando 10 en el Eje X para que de la impresión de que Mario se "Choca"
;;finalmente uso "copy-viewport", invoco la función "Teclado" y cierro mi función

(define(ClsD PosX PosY)
  ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
  (((draw-pixmap-posn "Izquierda/0.png" 'unknown/mask) BackLand) (make-posn (- PosX 10) PosY))
  (copy-viewport BackLand FrontLand)
  (Teclado PosX PosY 0)
  )

;;Función: ClsAD (Colisición Arriba a la Derecha)

;;Objetivo: Simular el un choque de aterrizaje con los objetos del mapa en el sentido derecho

;;Variables: PosX (Eje X), PosY (Eje Y)


;;DESCRIPCIÓN:

;;Defino la función ClsI con las variables PosX y PosY
;;uso "draw-pixmap" para dibujar el mapa
;;uso "draw-pixmap-posn" con el sprite "Derecha/0.png" en las posiciones PosX y PosY
;;finalmente uso "copy-viewport", invoco la función "Teclado" aumentaando 1 a "c" y cierro mi función

(define(ClsAD PosX PosY c)
  ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
  (((draw-pixmap-posn "Derecha/0.png" 'unknown/mask) BackLand) (make-posn PosX PosY))
  (copy-viewport BackLand FrontLand)
  (Teclado PosX PosY (+ c 1))
  )

;;Función: ClsAI (Colisición Arriba a la Izquierda)

;;Objetivo: Simular el un choque de aterrizaje con los objetos del mapa en el sentido izquierdo

;;Variables: PosX (Eje X), PosY (Eje Y)


;;DESCRIPCIÓN:

;;Defino la función ClsI con las variables PosX y PosY
;;uso "draw-pixmap" para dibujar el mapa
;;uso "draw-pixmap-posn" con el sprite "Izquierda/0.png" en las posiciones PosX y PosY
;;finalmente uso "copy-viewport", invoco la función "Teclado" aumentaando 1 a "c" y cierro mi función

(define(ClsAI PosX PosY c)
  ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
  (((draw-pixmap-posn "Izquierda/0.png" 'unknown/mask) BackLand) (make-posn PosX PosY))
  (copy-viewport BackLand FrontLand)
  (Teclado PosX PosY (+ c 1))
  )

;;Función recursiva: ECS (Efectos Caida Simple)

;;Objetivo: Simular la caida del personaje un bloque a otro

;;Variables: vctr (vector), P (posicionador), PosX (Eje X), PosY (Eje Y)


;;DESCRIPCIÓN:

;;Defino la función ECS con las variables vctr, P, PosX y PosY
;;uso "if" y defino una condición en la que uso P como parado siendo que si esta es menor que el vector ingresado seguirá realizando el proceso definido por "begin"
;;#t
;;hago uso del la intrucción begin pues requiero una serie de instrucciones
;;uso "draw-pixmap" para dibujar el mapa
;;uso "draw-pixmap-posn" con "vector-ref" un sprite del vector recivido en la posición P en mi ventana de dibujo en las posicones PosX y (+ PosY 10) para que descienda
;;uso "copy-viewport" e invoco la función "ECS" aumentando 1 a "P" y 10 a PosY
;;cierro "begin"
;;#f
;;Invoco la función "Teclado" y cierro if y mi función 


(define(ECS vctr P PosX PosY)
  (if(< P (vector-length vctr))
     {begin
       ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
       (((draw-pixmap-posn (vector-ref vctr P) 'unknown/mask) BackLand) (make-posn PosX (+ PosY 10)))
       (copy-viewport BackLand FrontLand)
       (ECS vctr (+ P 1) PosX (+ PosY 10))
     }
  (Teclado PosX PosY 0)
  ))

;;Función recursiva: ECFx (Especial Caida Fx)

;;Objetivo: Simular la caida del personaje desde un punto cualquiera al "piso/suelo" del mapa

;;Variables: PosX (Eje X), PosY (Eje Y)


;;DESCRIPCIÓN:

;;Defino la función ECFx con las PosX y PosY
;;uso "if" y defino una condición en la que si PosY no es igual a 555 (piso/suelo del mapa) ejecutará un proceso o llamará a teclado
;;#t
;;hago uso del la intrucción begin pues requiero una serie de instrucciones
;;uso "draw-pixmap" para dibujar el mapa
;;uso "draw-pixmap-posn" enviando "#CI/0.png" y sumando 10 a PosY
;;uso "copy-viewport" e invoco la función "ECFx" aumentando 10 a PosY
;;cierro "begin"
;;#f
;;hago uso del la intrucción begin pues requiero una serie de instrucciones
;;uso "draw-pixmap" para dibujar el mapa
;;uso "draw-pixmap-posn" enviando "#CI/1.png", pero no aumento en PosY pues para este punto el personaje estará en la posición 555
;;finalmente invoco la función "Teclado", cierra begin, if y la función

(define(ECFx PosX PosY)
  (if(not(= PosY 555))
     {begin
       ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
       (((draw-pixmap-posn "#CI/0.png" 'unknown/mask) BackLand) (make-posn PosX (+ PosY 10)))
       (copy-viewport BackLand FrontLand)
       (ECFx PosX (+ PosY 10))
     }
     {begin
       ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
       (((draw-pixmap-posn "#CI/1.png" 'unknown/mask) BackLand) (make-posn PosX PosY))
       (copy-viewport BackLand FrontLand)
       (Teclado PosX PosY 0)
  }
  ))

;;Función recursiva: FIDE (Falling In Death Effect)

;;Objetivo: Simular la caida del personaje al vacio

;;Variables: PosX (Eje X), PosY (Eje Y)


;;DESCRIPCIÓN:

;;Defino la función FIDE con las variables PosX y PosY
;;uso "if" defino una condición en la cual defino el punto en el cual Mario se muere
;;#t
;;uso "begin" pues requiero de una serie de instrucciones
;;uso "draw-pixmap" para dibujar mi mapa
;;uso "draw-pixmap-posn" enviando "#CI/0.png" y aumentando 10 en PosY para dar la impresión de caida
;;invoco la función FIDE aumentando 10 en PosY
;;cierro la instrucción "begin"
;;#f
;;invoco la  función "PantallaDeMuerte"
;;cierro if y la función FIDE

(define(FIDE PosX PosY)
  (if(< PosY 580)
     {begin
       ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
       (((draw-pixmap-posn "#CI/0.png" 'unknown/mask) BackLand) (make-posn PosX (+ PosY 10)))
       (copy-viewport BackLand FrontLand)
       (FIDE PosX (+ PosY 10))
     }
  (PantallaDeMuerte)
  ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;FUNCIONES DE SIMULACIÓN DE MOVIMIENTOS ACORDE A LAS COORDENADAS EN LOS EJES X & Y




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;Función recursiva: MoveI (Movimiento a la Izquierda)

;;Objetivo Simula el despalzamiento hacia la izquierda del viedo juego "Super Mario Bros 2"

;;Variables vctr (vector), P (Posicionador), PosX (Posición en el eje X), PosY (Posición en el eje Y)



;;DESCIPCIÓN:

(define(MoveI vctr P PosX PosY)           ;;Defino la función MoveI; que tiene las variables vctr, P, PosX y PosY
  (if(< P (vector-length vctr))           ;;hago uso de "if" y uso el posicionador para la condición de parada
     {begin                               ;;hago uso de la instrucción "begin" pues necesito una serie de instrucciones 
       (DMr0 vctr P PosX PosY)            ;;invoco la función "DMr0" enviandole el vector ingresado, con el posicionador P y una posición en X y Y

;;Despúes de dibujar el primer sprite de Mario la función analiza si la siguiente posición a dibujar es posible o no, en caso de no ser posible por alguno de los
;; "if", entonces el proceso recursivo parará, se invocará la función respectiva y se volverá a llamar a la función teclado en la función respectiva; de lo contrario
;;la función de movimiento se seguirá ejecutando hasta que encuntre un posición en la que no puedo continuar o hasta que el posicionador sea mayor a la cantidad de
;;sprites en cuyo caso se invocará la función teclado despúes de dibujar el último de los sprites del vector
 

;;COLISIONES Y EFECTOS EN LOS MOVIMIENTOS HACIA LA IZQUIERDA
          
       (if(<= PosX 0)                                                                                                         ;;Incio del mapa
          (ZeroClsAI-I PosX PosY)
          (if(and(and(>= PosX 145)(<= PosX 150))(and(>= PosY 530)(<= PosY 550)))                                              ;;Efecto de caida #1
             (ECS CI 0 PosX PosY)
             (if(and(and(>= PosX 180)(<= PosX 225))(<= PosY 560))                                                             ;;Bloque #1
                (ClsI PosX PosY)
                (if(and(and(> PosX 315)(<= PosX 335))(<= PosY 460))                                                           ;;Efecto de caida #2
                   (ECS CI 0 PosX PosY)
                   (if(and(and(> PosX 270)(<= PosX 290))(<= PosY 480))                                                        ;;Efecto de caida #3
                      (ECS CI 0 PosX PosY)
                      (if(and(and(>= PosX 225)(<= PosX 245))(<= PosY 500))                                                    ;;Efecto de caida #4
                         (ECFx PosX PosY)
                         (if(and(and(> PosX 605)(<= PosX 630))(<= PosY 530))                                                  ;;Efecto de caida #5
                            (ECS CI 0 PosX PosY)
                            (if(and(and(> PosX 555)(<= PosX 575))(<= PosY 550))                                               ;;Efecto de caida #6
                               (ECS CI 0 PosX PosY)
                               (if(and(>= PosX 675)(<= PosX 700))                                                             ;;Muerte #1
                                  (FIDE PosX PosY)
                                  (if(and(>= PosX 810)(<= PosX 835))                                                          ;;Muerte #2
                                     (FIDE PosX PosY)
                                     (if(and(and(>= PosX 945)(<= PosX 975))(>= PosY 510))                                     ;;Bloque #13
                                        (ClsI PosX PosY)
                                        (if(and(and(>= PosX 1010)(<= PosX 1020))(>= PosY 560))                                ;;Bloque #16
                                           (ClsI PosX PosY)
                                           (if(and(and(> PosX 1260)(<= PosX 1305))(<= PosY 450))                              ;;Efecto de caida #7
                                              (ECS CI 0 PosX PosY)
                                              (if(and(and(> PosX 1215)(<= PosX 1260))(<= PosY 470))                           ;;Efecto de caida #8
                                                 (ECS CI 0 PosX PosY)
                                                 (if(and(and(> PosX 1170)(<= PosX 1215))(<= PosY 490))                        ;;Efecto de caida #9
                                                    (ECS CI 0 PosX PosY)
                                                    (if(and(and(> PosX 1125)(<= PosX 1170))(<= PosY 510))                     ;;Efecto de caida #10
                                                       (ECS CI 0 PosX PosY)
                                                       (if(and(and(> PosX 1080)(<= PosX 1125))(<= PosY 530))                  ;;Efecto de caida #11
                                                          (ECS CI 0 PosX PosY)
                                                          (if(and(and(> PosX 1035)(<= PosX 1080))(<= PosY 550))               ;;Efecto de caida #12
                                                             (ECS CI 0 PosX PosY)
                                                             (MoveI vctr (+ P 1) (- PosX 10) PosY)
                                                             ))))))))))))))))))})
  (Teclado PosX PosY 0)
  )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;Función recursiva: MoveD (Movimiento a la Derecha)

;;Objetivo Simula el despalzamiento hacia la derecha del viedo juego "Super Mario Bros 2"

;;Variables vctr (vector), P (Posicionador), PosX (Posición en el eje X), PosY (Posición en el eje Y)



;;DESCIPCIÓN:

(define(MoveD vctr P PosX PosY)           ;;Defino la función MoveD que tiene las variables vctr, P, PosX y PosY
  (if(< P (vector-length vctr))           ;;hago uso de "if" y uso el posicionador para la condición de parada
     {begin                               ;;hago uso de la instrucción "begin" pues necesito una serie de instrucciones 
       (DMr0 vctr P PosX PosY)            ;;invoco la función "DMr0" enviandole el vector ingresado, con el posicionador P y una posición en X y Y
        
;;Despúes de dibujar el primer sprite de Mario la función analiza si la siguiente posición a dibujar es posible o no, en caso de no ser posible por alguno de los
;; "if", entonces el proceso recursivo parará, se invocará la función respectiva y se volverá a llamar a la función teclado en la función respectiva; de lo contrario
;;la función de movimiento se seguirá ejecutando hasta que encuntre un posición en la que no puedo continuar o hasta que el posicionador sea mayor a la cantidad de
;;sprites en cuyo caso se invocará la función teclado despúes de dibujar el último de los sprites del vector


;;COLISIONES Y EFECTOS EN LOS MOVIMIENTOS HACIA LA DERECHA

       (if(and(and(>= PosX 155)(<= PosX 180))(<= PosY 565))                                                                   ;;Bloque #1
          (ClsD PosX PosY)
          (if(and(and(>= PosX 230)(<= PosX 235))(and(>= PosY 530)(<= PosY 550)))                                              ;;Efecto de caida #1
             (ECS CI 0 PosX PosY)
             (if(and(and(>= PosX 405)(<= PosX 430))(<= PosY 460))                                                             ;;Efecto de caida #2
                (ECFx PosX PosY)
                (if(and(and(>= PosX 340)(<= PosX 360))(<= PosY 480))                                                          ;;Bloque #2
                   (ClsD PosX PosY)
                   (if(and(and(>= PosX 290)(<= PosX 310))(and(>= PosY 530)(<= PosY 500)))                                     ;;Bloque #3
                      (ClsD PosX PosY)
                      (if(and(and(>= PosX 560)(<= PosX 585))(>= PosX 560))                                                    ;;Bloque #8
                         (ClsD PosX PosY)
                         (if(and(and(>= PosX 605)(<= PosX 630))(>= PosX 540))                                                 ;;Bloque #9
                            (ClsD PosX PosY)
                            (if(and(>= PosX 665)(<= PosX 720))                                                                ;;Muerte #1
                               (FIDE PosX PosY)
                               (if(and(>= PosX 805)(<= PosX 840))                                                             ;;Muerte #2
                                  (FIDE PosX PosY)
                                  (if(and(and(> PosX 945)(<= PosX 960))(<= PosY 495))                                         ;;Efecto de caida #2
                                     (ECS CI 0 PosX PosY)
                                     (if(and(and(> PosX 990)(<= PosX 1020))(<= PosY 530))                                     ;;Efecto de caida #3
                                        (ECFx PosX PosY)
                                        (if(and(and(> PosX 1105)(<= PosX 1125))(<= PosY 570))                                 ;;Bloque 16
                                           (ClsD PosX PosY)
                                           (if(and(and(> PosX 1150)(<= PosX 1170))(<= PosY 550))                              ;;Bloque 17
                                              (ClsD PosX PosY)
                                              (if(and(and(> PosX 1195)(<= PosX 1215))(<= PosY 530))                           ;;Bloque 18
                                                 (ClsD PosX PosY)
                                                 (if(and(and(> PosX 1240)(<= PosX 1260))(<= PosY 510))                        ;;Bloque 19
                                                    (ClsD PosX PosY)
                                                    (if(and(and(> PosX 1285)(<= PosX 1305))(<= PosY 490))                     ;;Bloque 20
                                                       (ClsD PosX PosY)
                                                       (if(and(>= PosX 1330)(>= PosY 455))                                    ;;Level Up
                                                          (Level_Up PosX PosY PassedLevel 0)
                                                          (MoveD vctr (+ P 1) (+ PosX 10) PosY)                               ;;Invoco mi función de movimiento
                                                       )))))))))))))))))})
  (Teclado PosX PosY 0)                                                                                                       ;;Invoco lla función "Teclado"
  )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;Función recursiva: MoveAbD (Movimiento abajo)

;;Objetivo Simula el movimiento de agacharse del video juego "Super Mario 64"

;;Variables vctr (vector), P (Posicionador), PosX (Posición en el eje X), PosY (Posición en el eje Y)



;;DESCIPCIÓN:

(define(MoveAbD vctr P PosX PosY)           ;;Defino una función a la cual nombro "MoveAbD" (Movimiento Abajo) que usa un vector, posicionador y Posiciones en X y Y
  (if(< P (vector-length vctr))             ;;Hago uso de la instrucción "If" y uso como condición de parada para mi función el tamaño del vector
     {begin                                 ;;Uso la instrucción "Begin" para realizar un conjunto de acciones
       (DMr0 vctr P PosX PosY)              ;;Invoco la función "DMr0" enviandole el vector que recibo de la función "Teclado"
       (MoveAbD vctr (+ P 1) PosX PosY)     ;;Invoco la función "MoveAbD" aumentando en 1 el posicionador
       }                                    ;;Cierro la instrucción "Begin"
     (Teclado PosX PosY 0)                  ;;Invoco la función Teclado, enviandole las posiciones de X y Y actuales
     ))                                     ;;Cierra la instrucción "If" y la función "MoveAbD"



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;Función recursiva: MoveAD (Movimiento arriba a la Derecha)

;;Objetivo Simula el movimiento de salto hacia la derecha del viedo juego "Super Mario Bros."

;;Variables vctr (vector), P (Posicionador), PosX (Posición en el eje X), PosY (Posición en el eje Y) y c (contador)



;;TEORÍA:

;;Los movimientos de salto usan una estructura muy similar a los demás movimientos del personaje pero estos se diferencian dos factores claves: en
;;sus vectores pues estos son más extensos de lo necesario y en su funcionamiento pues estos son parabolas o semi-parabolas, de modo que estos usan las
;;colisiones como parada

;;DESCIPCIÓN:

(define(MoveAD vctr P PosX PosY c)        ;;Defino la función MoveAD con las variables vctr, P, PosX, PosY y c
  (if(< P (vector-length vctr))           ;;hago uso de "if" usando como condición de parada el tamaño del vector
     {begin                               ;;hago uso de la instrucción "begin" pues necesito una serie de instrucciones
       (DMr0 vctr P PosX PosY)            ;;invoco la función "DMr0" enviandole el vector ingresado, el posicionador y una posición en X y otra en Y

;;Al igual que las funciones usadas para avanzar y retrocerder (MoveD & MoveI) las funciones de salto dibujan su primer sprite y analizan si la siguiente posición
;;esta permitida o no; en caso de ser posible avanzar, estas disminuyen en Y mientras aumentan en X hasta un "punto de curvatura" que es el momento en el que estas
;;comienzan a aumentar en Y de modo que si el jugador salta de una plataforma desigual seguirá aumentando en X & Y hasta que se encuentre con el piso u otra
;;colisión. En caso de no ser posible avanzar una en X 0 Y se invoca la función respectiva para el caso en cuestión siendo que la mayor parte de las veces será
;;alguna de las partes del piso

;;COLISIONES Y EFECTOS EN LOS MOVIMIENTOS HACIA LA DERECHA

       (if(and(and(> PosX 0)(<= PosX 585))(>= PosY 560))                                                                         ;;Piso #1
          (ClsAD PosX 555 0)
          (if(and(and(and(>= PosX 180)(<= PosX 225))(>= PosY 535))(= c 0))                                                       ;;Bloque 1
             (ClsAD PosX PosY 1)
             (if(and(and(and(>= PosX 270)(<= PosX 315))(and(<= PosY 520)(>= PosY 490)))(= c 0))                                  ;;Bloque 2
                (ClsAD PosX PosY 1)
                (if(and(and(and(> PosX 315)(<= PosX 360))(and(<= PosY 520)(>= PosY 470)))(= c 0))                                ;;Bloque 3
                   (ClsAD PosX PosY 1)
                   (if(and(and(and(> PosX 360)(<= PosX 405))(and(<= PosY 520)(>= PosY 450)))(= c 0))                             ;;Bloque 4
                      (ClsAD PosX PosY 1)
                      (if(and(and(> PosX 280)(<= PosX 405))(and(>= PosY 530)(<= PosY 540)))                                      ;;Golpes de cabeza (Bloques 2, 6 y 7)
                         (ECFx PosX PosY)
                         (if(and(and(and(>= PosX 580)(<= PosX 630))(>= PosY 530))(= c 0))                                        ;;Bloque 8
                            (ClsAD PosX PosY 1)
                            (if(and(and(and(> PosX 630)(<= PosX 675))(>= PosY 510))(= c 0))                                      ;;Bloque 9
                               (ClsAD PosX PosY 1)
                               (if(and(and(>= PosX 665)(<= PosX 720))(>= PosY 540))                                              ;;Muerte #1
                                  (FIDE PosX PosY)
                                  (if(and(and(and(>= PosX 720)(<= PosX 810))(>= PosY 510))(= c 0))                               ;;Plataforma #1
                                     (ClsAD PosX PosY 1)
                                     (if(and(and(and(>= PosX 850)(<= PosX 945))(>= PosY 490))(= c 0))                            ;;Bloques 13 & 14
                                        (ClsAD PosX PosY 1)
                                        (if(and(and(>= PosX 980)(<= PosX 1125))(>= PosY 560))                                    ;;Piso #2
                                           (ClsAI PosX 555 0)
                                           (if(and(and(>= PosX 985)(<= PosX 940))(>= PosY 570))                                  ;;Bloque 17
                                              (ClsAI PosX 555 0)
                                              (if(and(and(and(>= PosX 1125)(<= PosX 1170))(>= PosY 535))(= c 0))                 ;;Bloque 18
                                                 (ClsAD PosX PosY 1)
                                                 (if(and(and(and(>= PosX 1170)(<= PosX 1215))(>= PosY 515))(= c 0))              ;;Bloque 19
                                                    (ClsAD PosX PosY 1)
                                                    (if(and(and(and(>= PosX 1215)(<= PosX 1260))(>= PosY 495))(= c 0))           ;;Bloque 20
                                                       (ClsAD PosX PosY 1)
                                                       (if(and(and(and(>= PosX 1260)(<= PosX 1305))(>= PosY 475))(= c 0))        ;;Bloque 21
                                                          (ClsAD PosX PosY 1)
                                                          (if(and(and(>= PosX 1330)(>= PosY 455))(= c 0))                        ;;Level Up
                                                             (Level_Up PosX PosY PassedLevel 0)
                                                             (if(and(and(>= PosX 665)(<= PosX 945))(>= PosY 580))                ;;Muerte #2
                                                                (PantallaDeMuerte)

             
          (if(>= P 6)
             (MoveAD vctr (+ P 1) (+ PosX 10) (+ PosY 10) 0)
             (if(>= P 4)
                (MoveAD vctr (+ P 1) (+ PosX 10) PosY 0)
                (if(>= P 0)
                   (MoveAD vctr (+ P 1) (+ PosX 10) (- PosY 10) 0)
                   ))))))))))))))))))))))})
  
  (Teclado PosX PosY 0)
  )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;Función recursiva: MoveAI (Movimiento arriba a la Izquierda)

;;Objetivo Simula el movimiento de salto hacia la izquierda del viedo juego "Super Mario Bros."

;;Variables vctr (vector), P (Posicionador), PosX (Posición en el eje X), PosY (Posición en el eje Y) y c (contador)



;;TEORÍA:

;;Los movimientos de salto usan una estructura muy similar a los demás movimientos del personaje pero estos se diferencian dos factores claves: en
;;sus vectores pues estos son más extensos de lo necesario y en su funcionamiento pues estos son parabolas o semi-parabolas, de modo que estos usan las
;;colisiones como parada

;;DESCIPCIÓN:

(define(MoveAI vctr P PosX PosY c)        ;;Defino la función MoveAI con las variables vctr, P, PosX, PosY y c
  (if(< P (vector-length vctr))           ;;hago uso de "if" usando como condición de parada el tamaño del vector
     {begin                               ;;hago uso de la instrucción "begin" pues necesito una serie de instrucciones
       (DMr0 vctr P PosX PosY)            ;;invoco la función "DMr0" enviandole el vector ingresado, el posicionador y una posición en X y otra en Y

;;Al igual que las funciones usadas para avanzar y retrocerder (MoveD & MoveI) las funciones de salto dibujan su primer sprite y analizan si la siguiente posición
;;esta permitida o no; en caso de ser posible avanzar, estas disminuyen en Y mientras aumentan en X hasta un "punto de curvatura" que es el momento en el que estas
;;comienzan a aumentar en Y de modo que si el jugador salta de una plataforma desigual seguirá aumentando en X & Y hasta que se encuentre con el piso u otra
;;colisión. En caso de no ser posible avanzar una en X 0 Y se invoca la función respectiva para el caso en cuestión siendo que la mayor parte de las veces será
;;alguna de las partes del piso

;;COLISIONES Y EFECTOS EN LOS MOVIMIENTOS HACIA LA DERECHA
       
       (if(<= PosX 0)                                                                                                       ;;Borde de incio del mapa
          (ZeroClsAI-I PosX 555)
          (if(and(and(>= PosX 270)(<= PosX 405))(<= PosY 530))                                                              ;;Efecto de caida #1
             (ECFx PosX PosY)
             (if(and(and(>= PosX 0)(<= PosX 585))(>= PosY 560))                                                             ;;Piso #1
                (ClsAI PosX 555 0)
                (if(and(and(and(>= PosX 180)(<= PosX 210))(>= PosY 535))(= c 0))                                            ;;Bloque #1
                   (ClsAI PosX PosY 1)
                   (if(and(and(>= PosX 270)(<= PosX 405))(<= PosY 535))                                                     ;;Golpes de cabeza (Bloques 2, 6 y 7)
                      (ECFx PosX PosY)
                      (if(and(and(>= PosX 415)(<= PosX 420))(<= PosY 540))                                                  ;;Colisión bloques aereos
                         (ECFx PosX PosY)
                         (if(and(and(>= PosX 980)(<= PosX 990))(<= PosY 580))                                               ;;Muro (Bloques #16 , #17)
                            (ECFx PosX PosY)
                            (if(and(and(and(>= PosX 1125)(<= PosX 1170))(>= PosY 535))(= c 0))                              ;;Bloque #17
                               (ClsAD PosX PosY 1)
                               (if(and(and(and(>= PosX 1170)(<= PosX 1215))(>= PosY 515))(= c 0))                            ;;Bloque #18
                                  (ClsAD PosX PosY 1)
                                  (if(and(and(and(>= PosX 1215)(<= PosX 1260))(>= PosY 495))(= c 0))                         ;;Bloque #19
                                     (ClsAD PosX PosY 1)
                                     (if(and(and(and(>= PosX 1260)(<= PosX 1305))(>= PosY 475))(= c 0))                      ;;Bloque #20
                                        (ClsAD PosX PosY 1)
                                        (if(and(and(and(>= PosX 1305)(<= PosX 1350))(>= PosY 455))(= c 0))                   ;;Bloque #21
                                           (ClsAD PosX PosY 1)
                                           (if(and(and(>= PosX 985)(<= PosX 1125))(>= PosY 560))                             ;;Piso #2
                                              (ClsAI PosX 555 0)
                                              (if(and(and(>= PosX 665)(<= PosX 945))(<= PosY 580))                           ;;Muerte
                                                 (PantallaDeMuerte)


          (if(>= P 6)
             (MoveAI vctr (+ P 1) (- PosX 10) (+ PosY 10) 0)
             (if(>= P 4)
                (MoveAI vctr (+ P 1) (- PosX 10) PosY 0)
                (if(>= P 0)
                   (MoveAI vctr (+ P 1) (- PosX 10) (- PosY 10) 0)
                      )))))))))))))))))})
  
  (Teclado PosX PosY 0)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;FUNCIÓN DE CONTROL DE MOVIMIENTO DE PERSONAJE (EN TECLADO)



(define T 0)                                           ;;Defino una constante T para "Teclado" que será 0

;;Funcion: Teclado

;;Objetivo: Obtener las teclas presionadas para generar movimientos

;;Variables; PosX (Posición en el Eje X), PosY (Posición en el Eje Y),  c (contador)


;;DESCRIPCIÓN:

;;Defino la función "Teclado" que usa posiciones en el Eje X y Y, más un contador para los saltos
;;hago uso de la función "viewport-flush-input" para evitar el proceso "release"
;;uso mi variable T para guardar el resultado de "key-value" que analiza lo obtenido por "get-key-press"

;;Defino una condición para cada tecla en la que analizo si T es igual a dicho tecla
;;#t
;;Uso la instrucción "begin" para los movimientos de salto para reproducir un sonido e invocar a los movimientos respectivos
;;en el caso de los demás movimientos solo invoco su función enviando los valores en X y Y
;;#f
;;En caso de que ninguna condición se cumpla y como una forma de asegurar que el jugador presionará alguna teclado valida
;;invoco la funión "Teclado" con los valores iniciales

;;Finalmente cierro parentesis para los "if" y la función teclado


(define(Teclado PosX PosY c)
  (viewport-flush-input FrontLand)
  (set! T (key-value(get-key-press FrontLand)))
  (if(equal? T 'up)
     {begin 
     (play-sound "Sonido/JumpE.wav" #t)
     (MoveAI Arriba-Izquierda 0 PosX PosY c)
     }
     (if(equal? T 'rshift)
        {begin
        (play-sound "Sonido/JumpE.wav" #t)
        (MoveAD Arriba-derecha 0 PosX PosY c)
        }
        (if(equal? T 'left)
           (MoveI Izquierda 0 PosX PosY)
           (if(equal? T 'right)
              (MoveD Derecha 0 PosX PosY)
              (if(equal? T 'down)
                 (MoveAbD Abajo-derecha 0 PosX PosY)
                 (if(equal? T 'rcontrol)
                    (Info PosX PosY)
                    (Teclado PosX PosY c)
                    )))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;HISTORY MODE



;;Funcines: HistoresMode & DrawHistoresMode (E1, E2, E3)

;;Objetivo: Narrar una pequeña historia anterior a la pantalla de inicio


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;DESCRIPCIONES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;Funciones DrawHistoresMode:

;;Las funciones "DrawHistoresModeE1", "DrawHistoresModeE2", "DrawHistoresModeE3"; tienen el mismo proposito. Estas dibujan un fondo (The Peach's Castle), y los
;;personajes de la franquisia Super Mario Bros; "Yoshi" y "Baby Mario".

;;Funcionamiento:

;;Nt: Las tres funciones hacen lo mismo

;;Estas funciones usan "draw-pixmap" para dibujar el fondo y "draw-pixmap-posn" para dibujar los sprites de personajes (en el pixmap 'BackLand'), luego proceden
;;a copiar estos sprites en FrontLand usando "copy-viewport"

(define(DrawHistoresModeE1)
  ((draw-pixmap BackLand) "HistoreMode/H3.png" (make-posn 0 0) "black")
  (((draw-pixmap-posn "HistoreMode/H1.png" 'unknown/mask) BackLand) (make-posn 0 330))
  (((draw-pixmap-posn "HistoreMode/H2.png" 'unknown/mask) BackLand) (make-posn 1100 293))
  (copy-viewport BackLand FrontLand)
  )

(define(DrawHistoresModeE2)
  ((draw-pixmap BackLand) "HistoreMode/H3.png" (make-posn 0 0) "black")
  (((draw-pixmap-posn "HistoreMode/H1.png" 'unknown/mask) BackLand) (make-posn 0 330))
  (((draw-pixmap-posn "HistoreMode/H4.png" 'unknown/mask) BackLand) (make-posn 1100 293))
  (copy-viewport BackLand FrontLand)
  )

(define(DrawHistoresModeE3)
  ((draw-pixmap BackLand) "HistoreMode/H3.png" (make-posn 0 0) "black")
  (((draw-pixmap-posn "HistoreMode/H1.png" 'unknown/mask) BackLand) (make-posn 600 330))
  ((draw-string BackLand) (make-posn 0 0) "Click, para continuar" "black")
  (copy-viewport BackLand FrontLand)
  )

;;HISTORESMODE

(define(HistoresMode)
  (play-sound "Sonido/History.wav" #t)
  (DrawHistoresModeE1)
  (sleep 1)
  (((draw-pixmap-posn "Exp/Exp1.png" 'unknown/mask) BackLand) (make-posn 120 210))
  (copy-viewport BackLand FrontLand)
  (sleep 1)
  (DrawHistoresModeE1)
  (sleep 1)
  (((draw-pixmap-posn "Exp/Exp2.png" 'unknown/mask) BackLand) (make-posn 970 180))
  (copy-viewport BackLand FrontLand)
  (sleep 1)
  (DrawHistoresModeE1)
  (sleep 1)
  (((draw-pixmap-posn "Exp/Exp3.png" 'unknown/mask) BackLand) (make-posn 120 210))
  (copy-viewport BackLand FrontLand)
  (sleep 1)
  (DrawHistoresModeE1)
  (sleep 1)
  (((draw-pixmap-posn "Exp/Exp4.png" 'unknown/mask) BackLand) (make-posn 970 180))
  (copy-viewport BackLand FrontLand)
  (sleep 1)
  (DrawHistoresModeE1)
  (sleep 1)
  (((draw-pixmap-posn "Exp/Exp5.png" 'unknown/mask) BackLand) (make-posn 970 180))
  (copy-viewport BackLand FrontLand)
  (sleep 1)
  (DrawHistoresModeE2)
  (sleep 1)
  (((draw-pixmap-posn "Exp/Exp6.png" 'unknown/mask) BackLand) (make-posn 970 180))
  (copy-viewport BackLand FrontLand)
  (sleep 1)
  (DrawHistoresModeE2)
  (sleep 1)
  (((draw-pixmap-posn "Exp/Exp7.png" 'unknown/mask) BackLand) (make-posn 970 180))
  (copy-viewport BackLand FrontLand)
  (sleep 1)
  (DrawHistoresModeE3)
  (sleep 1)
  (((draw-pixmap-posn "Exp/Exp8.png" 'unknown/mask) BackLand) (make-posn 680 180))
  (copy-viewport BackLand FrontLand)
  (sleep 1)
  (DrawHistoresModeE3)
  (sleep 1)
  (((draw-pixmap-posn "Exp/Exp9.png" 'unknown/mask) BackLand) (make-posn 680 180))
  (copy-viewport BackLand FrontLand)
  (sleep 1)
  (PantallaDeInicio)
  )


;;PANTALLAS DEL JUEGO


;;Función: PantallaDeInicio

;;Objetivo: Mostrar una imagen anterior al inicio del juego para que sirva como pantalla de inicio


;;DESCRIPCIÓN:

;;Defino la función "PantallaDeInicio"
;;uso las funciones "draw-pixmap" y "draw-string" para "dibujar" una imagen que será la pantalla de inicio y algunas lineas de texto (strings)
;;hago uso de la función "get-mouse-click" para que el jugador tenga necesariamente que dar click en alguna lado de la pantalla
;;invoco la función "PantallaDeCarga" enviando un vector y valores a variables
;;cierro la función

(define(PantallaDeInicio)
  ((draw-pixmap FrontLand) "Land/Entrada.jpg" (make-posn 0 0) "black")
  ((draw-string FrontLand) (make-posn 1000 370) "Haz clic para jugar" "blue")
  ((draw-string FrontLand) (make-posn 1040 570) "Presiona ctrl, para información del juego" "blue")
  (get-mouse-click FrontLand)
  (PantallaDeCarga Coins 0 0)
  )

;;Función recursiva: PantallaDeCarga

;;Objetivo: Mostrar una pantalla de carga

;;Variables: vctr (vector), P (posicionador), c (contador)


;;DESCRIPCIÓN:

;;Defino la función "PantallaDeCarga" con las variables vctr y P
;;uso "if" y declaro como condición de parada el momento en que el contador sea igual a 10
;;#t
;;uso begin pues necesito una serie de acciones
;;uso "draw-pixmap" para dibujar mi pantalla de carga
;;uso sleep para dar tiempo a "draw-pixmap-posn"
;;uso la función reset en el posicionador de mi "vector-ref" e invoco mi función "PantallaDeCarga" aumentando en 1 el posicionador y el contador
;;uso "copy-viewport" para que mi pantalla de carga se vea fluida
;;#f
;;uso otro begin pues necesito otra serie de acciones
;;uso "play-sound" para reproducir la banda sonora de Super Mario Bros
;;uso "draw-pixmap" para dibujar el mapa y "draw-pixmap-posn" para dibujar el primer Mario
;;finalmente invoco la función teclado enviando lo valores iniciales de Mario y cierro begin, if y mi función "PantallaDeCarga"

(define(PantallaDeCarga vctr P c)
  (if(<= c 10)
     {begin
       ((draw-pixmap BackLand) "Land/Carga.jpg" (make-posn 0 0) "black")
       (sleep 0.1)
       (set! P (Reset P vctr))
       (play-sound "Sonido/Coin.wav" #t)
       (((draw-pixmap-posn (vector-ref vctr P) 'unknown/mask) BackLand) (make-posn 10 460))
       (copy-viewport BackLand FrontLand)
       (PantallaDeCarga vctr (+ P 1) (+ c 1))
       }
     {begin
       (play-sound "Sonido/SMTheme.wav" #t)
       ((draw-pixmap FrontLand) "Land/Mapa.jpg" (make-posn 0 0) #f)
       (((draw-pixmap-posn "Derecha/0.png" 'unknown/mask) FrontLand) (make-posn 10 555))
       (Teclado 10 555 0)
       }
     ))

;;Función: PantallaDeMuerte

;;Objetivo: Mostrar una imagen que indique la muerte del jugador y a su vez antedesca la pantalla de inicio


;;DESCRIPCIÓN:

;;Defino la función "PantallaDeMuerte"
;;uso "play-sound" para reproducir el efecto de muerte de Super Mario 64
;;uso "draw-pixmap" para dibujar la pantalla de "Game Over" y "draw-string" para dibujar una linea de texto
;;uso get-mouse-click paea que el jugador tenga necesariamente que dar click
;;invoco PantallaDeInicio

(define(PantallaDeMuerte)
  (play-sound "Sonido/Death.wav" #t)
  ((draw-pixmap FrontLand) "Land/Game-Over.jpg" (make-posn 0 0) "black")
  ((draw-string FrontLand) (make-posn 545 570) "Haz click para jugar volver a empezar" "white")
  (get-mouse-click FrontLand)
  (PantallaDeInicio)
  )

;;Función: Info

;;Objetivo: Mostrar una imagen que indique los controles del juego

;;Variables: PosX PosY

;;DESCRIPCIÓN:

;;Defino la función "Info" con posición en el eje X y Y
;;uso "draw-pixmap" para dibujar una imagen y "draw-string" para dibujar un texto
;;invoco la función "Teclado" y envio las posciones en el eje X y Y, cierro el funció

(define(Info PosX PosY)
  ((draw-pixmap FrontLand) "Land/Info.jpg" (make-posn 0 0) "black")
  ((draw-string FrontLand) (make-posn 1040 570) "Muevete para continuar" "blue")
  (Teclado PosX PosY 0)
  )

;;Función recursiva: Level_Up

;;Objetivo: Simular la pantalla de victoria

;;Variables: PosX (Eje X), PosY (Eje Y), vctr (vector), P (Posicionador)


;;DESCRIPCIÓN:

;;Defino la función "Level_Up" conl las variables PosX, PosY, vctr y P
;;uso "if" y uso como condición de parada de mi función recursiva el tamaño del vector
;;#t
;;uso la instruccion begin pues requiero una serie de acciones
;;uso "draw-pixmap" para dibujar el mapa
;;uso "sleep" para que la animación de mi personaje tarde un poco
;;uso "draw-pixmap-posn" para dibujar los sprites de Mario siendo que uso "vector-ref" con mi posicionador para recorrer todo el vector que almacena los sprites
;;finalmente uso "copy-viewport" y copio toda la información en la ventana principal "FrontLand"
;;#f
;;uso "play-sound" para reproducir el archivo "LevelComplete"
;;uso "draw-pixmap-posn" enviando "Level Up.png"
;;uso "draw-string" para dibujar una linea de texto
;;uso "get-mouse-click" para que el jugador deba dar click
;;cierro mi condición "if"
;;cierro la biblioteca grafica
;;cierro mi función

(define(Level_Up PosX PosY vctr P)
  (if(< P (vector-length vctr))
     {begin
       ((draw-pixmap BackLand) "Land/Mapa.jpg" (make-posn 0 0) "black")
       (sleep 1)
       (((draw-pixmap-posn (vector-ref vctr P) 'unknown/mask) BackLand) (make-posn 1305 451))
       (copy-viewport BackLand FrontLand)
       (Level_Up PosX PosY vctr (+ P 1))
       }
     {begin
       (play-sound "Sonido/LevelComplete.wav" #t)
       (((draw-pixmap-posn "Land/LevelUp.png" 'unknown/mask) FrontLand) (make-posn 0 0))
       ((draw-string FrontLand) (make-posn 580 400) "Enhorabuena, ganaste el nivel" "blue")
       (get-mouse-click FrontLand)
       }
  )
  (close-graphics)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;LLAMADO A LA FUNCIÓN QUE DA INICIO AL JUEGO


(HistoresMode)