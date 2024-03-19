import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMISkeleton?
    mutating func calculateBMI(height : Float, weight : Float){
        
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
            bmi = BMISkeleton(value: bmiValue, advice: "Eat more pies", color: .blue)
            } else if (bmiValue < 24.9){
            bmi = BMISkeleton(value: bmiValue, advice: "Fit as Fiddle", color: .green)
            } else{
            bmi = BMISkeleton(value: bmiValue, advice: "Eat less pies", color: .red)
            }
   
        
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .clear
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
}
