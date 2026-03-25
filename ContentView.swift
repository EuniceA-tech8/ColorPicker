//
//  ContentView.swift
//  ColorPicker
//
//  Created by BMCC Lab Guest on 3/24/26.
//

import SwiftUI

struct ContentView: View {
    @State private var redIsOn = true
    @State private var blueIsOn = true
    @State private var greenIsOn = true
    
    @State private var redAmount = 255.0
       @State private var blueAmount = 255.0
       @State private var greenAmount = 255.0
    
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .foregroundStyle(Color(red: redIsOn ? redAmount / 255.0 : 0, green: greenIsOn ? greenAmount / 255.0 : 0, blue: blueIsOn ? blueAmount / 255.0 : 0))
                .frame(height: 200)
                .border(Color.black, width: 3)
                .shadow(radius: 10)
            
           
            
            Text("Intensity:    Red: \(Int(redAmount) * 100 / 255), Blue: \(Int(blueAmount * 100 / 255)), Green: \(Int(greenAmount) * 100 / 255)")
            
            HStack {
                
                //Red Toggle
                Toggle(isOn: $redIsOn, label:{ Text("Activate Red")
                    
                }).labelsHidden()
                    .tint(.red)

                //Red Slider
                Slider(value: $redAmount, in: 0...255)
                    .tint(.red)
            }
            HStack{
                //Blue Toggle
                Toggle(isOn: $blueIsOn, label:{ Text("Activate Blue")
                }).labelsHidden()
                    .tint(.blue)
              
                //Blue Slider
                Slider(value: $blueAmount, in: 0...255)
                    .tint(.blue)
                
            }
            
            HStack{
                //Green Toggle
                Toggle(isOn: $greenIsOn, label:{ Text("Activate Green")
                    }).labelsHidden()
                    .tint(.green)
                   
                //Green Slider
                Slider(value: $greenAmount, in: 0...255)
                    .tint(.green)
               
                
            }
            
            Button("Reset"){
                redIsOn = true
                blueIsOn = true
                greenIsOn = true
                redAmount = 255.0
                blueAmount = 255.0
                greenAmount = 255.0
            }.buttonStyle(.borderedProminent)
                .tint(.blue)
            
    }
        
        .padding()
    }
    
}
    



#Preview {
    ContentView()
}

