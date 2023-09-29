//
//  LottieView.swift
//  Card_view_animation
//
//  Created by vignesh kumar c on 29/09/23.
//

import SwiftUI
import Lottie


struct LottieView: UIViewRepresentable {
  
    
    let animationView = LottieAnimationView()
    var fileName = "vcTransition2"
    
    func makeUIView(context: UIViewRepresentableContext <LottieView>) ->  UIView {
        let view = UIView(frame: .zero)
        let animationView = LottieAnimationView()
        let animation = Animation.named(fileName)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
                                     animationView.widthAnchor.constraint(equalTo: view.widthAnchor)])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext <LottieView>) {
        
    }
    
 
}

