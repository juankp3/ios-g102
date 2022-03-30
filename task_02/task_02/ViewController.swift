//
//  ViewController.swift
//  task_02
//
//  Created by Juan Kuga Palomino on 29/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbltitle: UILabel!
    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var imgWonder: UIImageView!
    @IBOutlet weak var lblDesc: UILabel!
    

//    1. Dictionary
//    let wonders = [
//        ["title": "Taj Majal", "image": "taj-mahal", "description" : "Es un monumento funerario construido entre 1631 y 1654 en la ciudad de Agra, estado de Uttar Pradesh (India), a orillas del río Yamuna, por el emperador musulmán Shah Jahan de la dinastía mogol. "],
//        ["title": "Coliseo Romano", "image": "coliseo-romano", "description" : "Es un anfiteatro de la época del Imperio romano, construido en el siglo I. Está ubicado en el este del Foro Romano, y fue el más grande de los que se construyeron en el Imperio romano. Conocido originalmente como Anfiteatro Flavio (Amphitheatrum Flavium) pasa a ser llamado Coliseo (Colosseum) porque a su lado había una gran estatua, el Coloso de Nerón,2​ un monumento dedicado al emperador Nerón que posteriormente sufrió transformaciones y llegó a desaparecer."],
//        ["title": "Machu Picchu", "image": "machu-picchu", "description" : "Es el nombre contemporáneo que se da a una llacta —antiguo poblado incaico andino— construida antes del siglo xv, ubicada en la Cordillera Oriental del sur del Perú, en la cadena montañosa de Los Andes a 2430 metros sobre el nivel del mar."]
//    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }

    @IBAction func changePlace(_ sender: Any) {
        setData()
    }
    
    func setData(){
       
        let index = segControl.selectedSegmentIndex
        
//        1. Dictionary
//        lbltitle.text = segControl.titleForSegment(at: index)
//        imgWonder.image = UIImage(named: wonders[index]["image"] ?? "")
//        lblDesc.text = wonders[index]["description"]
        
//      2. Class
        let wonders = loadData()
        lbltitle.text = segControl.titleForSegment(at: index)
        imgWonder.image = UIImage(named: wonders[index].image ?? "")
        lblDesc.text = wonders[index].description
    }
    
    func loadData()->[Wonder]{
        let wonders = [
            Wonder(
                title: "Taj Majal",
                image: "taj-mahal",
                description:  "Es un monumento funerario construido entre 1631 y 1654 en la ciudad de Agra, estado de Uttar Pradesh (India), a orillas del río Yamuna, por el emperador musulmán Shah Jahan de la dinastía mogol."
            ),
            Wonder(
                title: "Coliseo Romano",
                image: "coliseo-romano",
                description:  "Es un anfiteatro de la época del Imperio romano, construido en el siglo I. Está ubicado en el este del Foro Romano, y fue el más grande de los que se construyeron en el Imperio romano. Conocido originalmente como Anfiteatro Flavio (Amphitheatrum Flavium) pasa a ser llamado Coliseo (Colosseum) porque a su lado había una gran estatua, el Coloso de Nerón,2​ un monumento dedicado al emperador Nerón que posteriormente sufrió transformaciones y llegó a desaparecer."
            ),
            Wonder(
                title: "Machu Picchu",
                image: "machu-picchu",
                description:  "Es el nombre contemporáneo que se da a una llacta —antiguo poblado incaico andino— construida antes del siglo xv, ubicada en la Cordillera Oriental del sur del Perú, en la cadena montañosa de Los Andes a 2430 metros sobre el nivel del mar."
            ),
            
            
        ]
        
        return wonders
    }
    
}

class Wonder {
    let title:String?
    let image:String?
    let description:String?
    
    init(title:String, image:String, description:String){
        self.title = title
        self.image = image
        self.description = description
    }
}

