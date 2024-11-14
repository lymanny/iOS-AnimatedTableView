//
//  UITableView.swift
//  AnimatedTableView
//
//  Created by lymanny on 14/11/24.
//

import UIKit

public extension UITableView {
    
    // MARK: - Slide-in Animation
    func animateTableViewSlideIn() {
        self.transform = CGAffineTransform(translationX: 0, y: self.bounds.height)
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseInOut) {
            self.transform = .identity
        }
    }
    
    // MARK: - Fade-in Animation
    func animateTableViewFadeIn() {
        self.alpha = 0
        UIView.animate(withDuration: 0.5) {
            self.alpha = 1
        }
    }
    
    // MARK: - Scale-in Animation
    func animateTableViewScaleIn() {
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5) {
            self.transform = .identity
        }
    }
    
    // MARK: - Slide-in from Left Animation
    func animateTableViewSlideInFromLeft() {
        self.transform = CGAffineTransform(translationX: -self.bounds.width, y: 0)
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseInOut) {
            self.transform = .identity
        }
    }
    
    // MARK: - Slide-in from Right Animation
    func animateTableViewSlideInFromRight() {
        self.transform = CGAffineTransform(translationX: self.bounds.width, y: 0)
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseInOut) {
            self.transform = .identity
        }
    }
    
    // MARK: - Zoom-in with Rotation Animation
    func animateTableViewZoomInWithRotation() {
        self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1).rotated(by: .pi)
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .curveEaseInOut) {
            self.transform = .identity
        }
    }
    
    // MARK: - Flip Animation
    func animateTableViewFlip() {
        self.layer.transform = CATransform3DMakeRotation(.pi, 1, 0, 0)
        UIView.animate(withDuration: 0.6, delay: 0, options: .curveEaseInOut) {
            self.layer.transform = CATransform3DIdentity
        }
    }
    
}

