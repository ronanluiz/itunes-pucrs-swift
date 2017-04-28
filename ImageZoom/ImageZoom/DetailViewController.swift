//
//  DetailViewController.swift
//  ImageZoom
//
//  Created by admin on 4/28/17.
//  Copyright © 2017 Rlzsystem. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var onOffZoom: UISwitch!
    
    var imageSelected: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Ajustes no zoom do scrollview
        scrollView.maximumZoomScale = 4
        scrollView.minimumZoomScale = 1
        scrollView.zoomScale = 1
        
        //Ajustes para a imagem carregada preencher o imageView
        imageView.image = UIImage(named: imageSelected!)
        imageView.sizeToFit()        
    }
    
    override func viewWillLayoutSubviews() {
        // Define o tamanho do scroll pelo tamanho real da imagem que esta sendo exibida
        scrollView.contentSize = imageView.frame.size
    }
    
    // Funcao executada sempre que quando for realizado um pinch to zoom
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return imageView
    }
    
    // Evento de alteração do valor do slider
    @IBAction func changeValue(_ sender: UISlider) {
        
        scrollView.zoomScale = CGFloat(slider.value)
    }
    
    // Executa quando a scrollView realiza um zoom
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        // sincroniza o valor do slider conforme o zoom da imagem na tela
        slider.setValue(Float(scrollView.zoomScale), animated: true)
    }
    
    @IBAction func turnOnOff(_ sender: UISwitch) {
        // habilita/desabilita o slider
        slider.isEnabled = onOffZoom.isOn
        
        // habilita/desabilita o pinch to zoom
        scrollView.pinchGestureRecognizer?.isEnabled = onOffZoom.isOn        
    }
    
    
}
