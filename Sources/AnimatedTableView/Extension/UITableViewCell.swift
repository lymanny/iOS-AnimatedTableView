//
//  UITableViewCell.swift
//  AnimatedTableView
//
//  Created by lymanny on 14/11/24.
//
import UIKit

public extension UITableViewCell {
    
    // MARK: - Bounce Animation
    func animateBounce(completion: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { _ in
            UIView.animate(withDuration: 0.1, animations: {
                self.transform = .identity
            }, completion: { _ in
                completion?() // Call the completion handler if provided
            })
        }
    }
    
    // MARK: - Scale Animation
    func animateScale(completion: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseInOut], animations: {
            self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }) { _ in
            UIView.animate(withDuration: 0.2, animations: {
                self.transform = .identity
            }, completion: { _ in
                completion?() // Call the completion handler if provided
            })
        }
    }
    
    // MARK: - Fade-Out Animation
    func animateFadeOut(completion: @escaping () -> Void) {
        let originalColor = self.backgroundColor // Store the original background color
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0
        }) { _ in
            self.alpha = 1
            self.backgroundColor = originalColor // Restore original color
            completion()
        }
    }
    
    // MARK: - Slide Left Animation
    func animateSlideLeft(completion: @escaping () -> Void) {
        let originalColor = self.backgroundColor
        UIView.animate(withDuration: 0.3, animations: {
            self.transform = CGAffineTransform(translationX: -self.bounds.width, y: 0)
        }) { _ in
            self.transform = .identity
            self.backgroundColor = originalColor // Restore original color
            completion()
        }
    }
    
    // MARK: - Rotate Animation
    func animateRotate(completion: @escaping () -> Void) {
        let originalColor = self.backgroundColor
        UIView.animate(withDuration: 0.3, animations: {
            self.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4)
            self.alpha = 0
        }) { _ in
            self.transform = .identity
            self.alpha = 1
            self.backgroundColor = originalColor // Restore original color
            completion()
        }
    }
    
    // MARK: - Combined Animation (Scale, Fade, Slide)
    func animateCombined(completion: @escaping () -> Void) {
        let originalColor = self.backgroundColor
        UIView.animate(withDuration: 0.3, animations: {
            self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            self.alpha = 0
            self.transform = self.transform.translatedBy(x: -self.bounds.width, y: 0)
        }) { _ in
            self.transform = .identity
            self.alpha = 1
            self.backgroundColor = originalColor // Restore original color
            completion()
        }
    }
    
}
