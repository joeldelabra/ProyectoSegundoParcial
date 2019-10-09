

import Foundation
import UIKit

class NuevoCarroController : UIViewController
{
    var callbackAgregarNuevo : ((InformacionAuto)-> Void)!
   
    
    @IBOutlet weak var lblModeloAuto: UITextField!
    @IBOutlet weak var lblPlacaAuto: UITextField!
    @IBOutlet weak var lblMarcaAuto: UITextField!
    @IBOutlet weak var lblAñoAuto: UITextField!
    @IBOutlet weak var lblConductorAuto: UITextField!
    
    @IBAction func btnGuardar(_ sender: Any) {
        var auto : InformacionAuto
        
        auto = InformacionAuto(NombreConductor: "", Año: "", Placa: "", ModeloAuto: "", MarcaAuto: "", Foto: "CarroIcono")
        
        auto.ModeloAuto = lblModeloAuto!.text
        auto.Año = lblAñoAuto!.text
        auto.MarcaAuto = lblMarcaAuto!.text
        auto.Placa = lblPlacaAuto!.text
        auto.NombreConductor = lblConductorAuto!.text
        
        callbackAgregarNuevo(auto)
        navigationController?.popViewController(animated: true)
        
    }
}
