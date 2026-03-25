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
                .fill(Color(red: redIsOn ? redAmount / 255.0 : 0, green: greenIsOn ? greenAmount / 255.0 : 0, blue: blueIsOn ? blueAmount / 255.0 : 0))
                .frame(width: 250, height: 100)
                .border(Color.black)
                .shadow(radius: 10)
            
            Text("Intensity:    Red: \(Int(redAmount) * 100 / 255), Blue: \(Int(blueAmount * 100 / 255)), Green: \(Int(greenAmount) * 100 / 255)")
            
            Slider(value: $redAmount, in: 0...255)
                .tint(.red)
            Slider(value: $blueAmount, in: 0...255)
                .tint(.blue)
            Slider(value: $greenAmount, in: 0...255)
                .tint(.green)
            
            //Text("Toggle Color")
            Toggle("Activate Red", isOn: $redIsOn)
                .foregroundColor(redIsOn ? .red : .primary)
            //Text("Toggle Color")
            Toggle("Activate Blue", isOn: $blueIsOn)
                .foregroundColor(blueIsOn ? .blue : .primary)
            Toggle("Activate Green", isOn: $blueIsOn)
            //Text("Toggle Color")
                .foregroundColor(greenIsOn ? .green : .primary)
            
    }  
        .padding()
    }
    
}
    

#Preview {
    ContentView()
}
