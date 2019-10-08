
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var informacion : [InformacionAuto] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        informacion.append(InformacionAuto(NombreConductor: "Pablo", Año: "2004", Placa: "JADLV4585", ModeloAuto: "Bochito", MarcaAuto: "Chevrolet", Foto: "ImagenPredeterminada"))
        
        informacion.append(InformacionAuto(NombreConductor: "Marco", Año: "1998", Placa: "ACE1234", ModeloAuto: "Camionesta", MarcaAuto: "Nissan", Foto: "ImagenPredeterminada"))
        
        informacion.append(InformacionAuto(NombreConductor: "Gabriel", Año: "2000", Placa: "ADC8498", ModeloAuto: "Pick up", MarcaAuto: "Chevrolet", Foto: "ImagenPredeterminada"))
        
        informacion.append(InformacionAuto(NombreConductor: "Francisco", Año: "1980", Placa: "CKDI666", ModeloAuto: "Ferrari S5", MarcaAuto: "Ferrari", Foto: "ImagenPredeterminada"))
        
        informacion.append(InformacionAuto(NombreConductor: "Jonathan", Año: "2019", Placa: "QUDA8455", ModeloAuto: "", MarcaAuto: "Chevrolet", Foto: "ImagenPredeterminada"))
        
        informacion.append(InformacionAuto(NombreConductor: "Ana", Año: "1999", Placa: "ZKEX5265", ModeloAuto: "Camioneta", MarcaAuto: "Nissan", Foto: "ImagenPredeterminada"))
        
       
       
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return informacion.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaInformacionAuto") as? CeldaInformacionController
        celda?.lblModeloAuto.text = informacion[indexPath.row].ModeloAuto
        celda?.lblAño.text = informacion[indexPath.row].Año
        celda?.lblMarca.text = informacion[indexPath.row].MarcaAuto
        celda?.lblPlaca.text = informacion[indexPath.row].Placa
        celda?.lblNombreConductor.text = informacion[indexPath.row].NombreConductor
        
        return celda!
    }

}

