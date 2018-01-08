//
//  ViewController.swift
//  MapKitDemo
//
//  Created by 王科学 on 08/01/2018.
//  Copyright © 2018 mapkit. All rights reserved.
//

import UIKit
import MapKit

final class SchoolAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate:CLLocationCoordinate2D, title: String?, subtitle:String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
        super.init()
    }
    
    var region: MKCoordinateRegion {
        let span = MKCoordinateSpanMake(0.05, 0.05)
        return MKCoordinateRegion(center:coordinate, span:span)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        let mitCoordinate = CLLocationCoordinate2D(latitude: 42.3601, longitude: -71.0942)
        let mitAnnotation = SchoolAnnotation(coordinate:mitCoordinate, title: "MIT", subtitle:"Thwsafsdf. asdfasdf...MIT...")
        
        mapView.addAnnotation(mitAnnotation)
        mapView.setRegion(mitAnnotation.region, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController:MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let schoolAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView{
            schoolAnnotationView.animatesWhenAdded = true
            schoolAnnotationView.titleVisibility = .adaptive
            schoolAnnotationView.subtitleVisibility  = .adaptive
            
            return schoolAnnotationView
        }
        return nil
    }
}
