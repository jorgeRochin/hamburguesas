//
//  ViewController.swift
//  HamburguesasMundo
//
//  Created by Jorge Rochín. on 08/10/16.
//  Copyright © 2016 Jorge Rochín. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var muestraPais: UILabel!
    @IBOutlet weak var muestraHamburguesa: UILabel!
    let colores = Colores()
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func quieroUnaHamburguesa() {
        muestraPais.text = paises.obtenPaises()
        muestraHamburguesa.text = hamburguesas.obtenHamburguesas()
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }

}

