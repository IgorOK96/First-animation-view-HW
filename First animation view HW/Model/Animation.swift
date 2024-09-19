//
//  Animation.swift
//  First animation view HW
//
//  Created by user246073 on 9/19/24.
//

// Animation.swift
import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double

    static func getRandomAnimation() -> Animation {
        let animations = [
            "pop",
            "slideLeft",
            "slideRight",
            "slideDown",
            "slideUp",
            "squeezeLeft",
            "squeezeRight",
            "squeezeDown",
            "squeezeUp",
            "fadeIn",
            "fadeOut",
            "fadeOutIn",
            "fadeInLeft",
            "fadeInRight",
            "fadeInDown",
            "fadeInUp",
            "zoomIn",
            "zoomOut",
            "fall",
            "shake",
            "flipX",
            "flipY",
            "morph",
            "squeeze",
            "flash",
            "wobble",
            "swing"
        ]

        let curves = [
            "easeIn",
            "easeOut",
            "easeInOut",
            "linear",
            "spring",
            "easeInSine",
            "easeOutSine",
            "easeInOutSine",
            "easeInQuad",
            "easeOutQuad",
            "easeInCubic",
            "easeOutCubic",
            "easeInOutCubic",
            "easeInQuart",
            "easeOutQuart",
            "easeInOutQuart",
            "easeInQuint",
            "easeOutQuint",
            "easeInOutQuint"
        ]

        return Animation(
            name: animations.randomElement() ?? "pop",
            curve: curves.randomElement() ?? "easeIn",
            force: Double.random(in: 1...1.8),
            duration: Double.random(in: 1...1.8),
            delay: 0.3 
        )
    }
}
