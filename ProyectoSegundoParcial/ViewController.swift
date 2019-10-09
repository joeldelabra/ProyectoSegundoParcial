
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var informacion : [InformacionAuto] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        informacion.append(InformacionAuto(NombreConductor: "Pablo", Año: "2004", Placa: "JADLV4585", ModeloAuto: "Bochito", MarcaAuto: "Chevrolet", Foto: "CarroIcono"))
        
        informacion.append(InformacionAuto(NombreConductor: "Marco", Año: "1998", Placa: "ACE1234", ModeloAuto: "Camionesta", MarcaAuto: "Nissan", Foto: "CarroIcono"))
        
        informacion.append(InformacionAuto(NombreConductor: "Gabriel", Año: "2000", Placa: "ADC8498", ModeloAuto: "Pick up", MarcaAuto: "Chevrolet", Foto: "CarroIcono"))
        
        informacion.append(InformacionAuto(NombreConductor: "Francisco", Año: "1980", Placa: "CKDI666", ModeloAuto: "Ferrari S5", MarcaAuto: "Ferrari", Foto: "CarroIcono"))
        
        informacion.append(InformacionAuto(NombreConductor: "Jonathan", Año: "2019", Placa: "QUDA8455", ModeloAuto: "", MarcaAuto: "Chevrolet", Foto: "CarroIcono"))
        
        informacion.append(InformacionAuto(NombreConductor: "Ana", Año: "1999", Placa: "ZKEX5265", ModeloAuto: "Camioneta", MarcaAuto: "Nissan", Foto: "CarroIcono"))
        
       
       
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
        celda?.imgFoto.image = UIImage(named: informacion[indexPath.row].Foto!)
        
        return celda!
    }
    
    func guardarAutoNuevo(auto : InformacionAuto){
        
        informacion.append(auto)
        TVAutos.reloadData()
    }
    
    @IBOutlet weak var TVAutos: UITableView!
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToNuevo" {
            let destino =  segue.destination as? NuevoCarroController
            
    
            
            destino?.callbackAgregarNuevo = guardarAutoNuevo
            
        
            
        }
        
        if segue.identifier == "GoToVisualizar"{
            let destino = segue.destination as? visualizacionInformacion
            
            let indexPath = TVAutos.indexPath(for:(sender as? UITableViewCell)!)
            let listDestination = informacion[indexPath!.row]
            destino?.Data = listDestination
            
        }
    }

}

