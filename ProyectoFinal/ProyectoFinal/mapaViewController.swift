//
//  mapaViewController.swift
//  ProyectoFinal
//
//  Created by user233823 on 2/10/23.
//

import UIKit
import MapKit

class mapaViewController: UIViewController,MKMapViewDelegate {
    
    var miPin:AnotacionPin!
    
    @IBOutlet weak var mapa: MKMapView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapa.mapType = .standard
        
        //Establecemos la localizacion
        let localizacion = CLLocationCoordinate2D(latitude: 40.41572662623631, longitude: -3.707025019584135)
        let region = MKCoordinateRegion(center: localizacion, latitudinalMeters: 100, longitudinalMeters: 100)
        mapa.setRegion(region, animated: true)
        
        miPin = AnotacionPin(titulo: "Plaza Mayor", subtitulo: "Madrid", coordinate: localizacion, imagen: UIImage(named: "madrid"))
        mapa.addAnnotation(miPin)
        
     /*   //Añadimos anotaciones
        let anotacion = MKPointAnnotation()
        anotacion.coordinate = localizacion
        anotacion.title = "Plaza Mayor de Madrid"
        anotacion.subtitle = "España"
        mapa.addAnnotation(anotacion)*/
    }
    
     @IBAction func miSegment(_ sender: UISegmentedControl) {
         switch (segmentControl.selectedSegmentIndex){
         case 0:
             mapa.mapType = .standard
         case 1:
             mapa.mapType = .satellite
         default:
             mapa.mapType = .hybrid
         }
     }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let anotacionView = MKAnnotationView(annotation: miPin, reuseIdentifier: "madrid")
        anotacionView.image = UIImage(named: "madrid")
        let transformarImagen = CGAffineTransform(scaleX: 0.3, y: 0.3)
        anotacionView.transform = transformarImagen
        
        return anotacionView
    }
}


