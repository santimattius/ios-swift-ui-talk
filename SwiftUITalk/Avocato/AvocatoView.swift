//
//  AvocatoView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 25/10/22.
//

import Foundation

import SwiftUI
import Lottie

struct TalkLoading: UIViewRepresentable {
    let lottieFile: String = "avocato"

    let animationView = LottieAnimationView()

    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)

        animationView.animation = Animation.named(lottieFile)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        
        view.addSubview(animationView)

        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
