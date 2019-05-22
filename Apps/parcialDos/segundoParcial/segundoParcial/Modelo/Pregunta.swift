//
//  Pregunta.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//

import Foundation

class Pregunta{
    let imagenPregunta: String
    let pregunta: String
    let opcionA: String
    let opcionB: String
    let respuestaCorrecta: Int
    
    init(imagen: String, textoPregunta: String, eleccionA: String, eleccionB: String, respuesta: Int) {
        imagenPregunta = imagen
        pregunta = textoPregunta
        opcionA = eleccionA
        opcionB = eleccionB
        respuestaCorrecta = respuesta
        
    }
    
}
