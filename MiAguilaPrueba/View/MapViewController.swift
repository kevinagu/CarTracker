//
//  ViewController.swift
//  MiAguilaPrueba
//
//  Created by Juan David Parra Pimiento on 8/26/19.
//  Copyright © 2019 Juan David Parra Pimiento. All rights reserved.
//

import UIKit
import CoreLocation
import GoogleMaps

class MapViewController: UIViewController {
    //IBOulets
    @IBOutlet weak var mapView: GMSMapView!
    
    //Constants
    let locationManager = CLLocationManager()
    let initialPoint = CGPoint(x: 4.667426, y: -74.056624)
    let finalPoint = CGPoint(x: 4.672655, y: -74.054071)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self
    }


}

extension MapViewController: CLLocationManagerDelegate{
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
    if let location = locations.first as? CLLocation {
    mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
    locationManager.stopUpdatingLocation()
    }
    }
}
