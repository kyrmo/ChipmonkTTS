//
//  ContentView.swift
//  Say It
//
//  Created by MAKAI SALAZAR / ADAGE-133 on 1/24/25.
//

import SwiftUI
import AVFoundation

struct ContentView: View         {
    
    var backgroundColor = Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255)
    
    @State var userInput = ""
    @State var synth = AVSpeechSynthesizer()
    
    var body: some View {
        ZStack{
            Color.blue
                .frame(width: 402, height: 1000)
       
        VStack {
            Text ("Say It (High Pitch) ")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .padding()
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            Image(systemName: "teddybear.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(Color.white)
                .accentColor(.black)
            Image("wa")
                .resizable()
                .frame(width: 250, height: 200)
            Image (systemName: "")
                .resizable()
                .frame(width: 200, height: 200)

            HStack {
                
                Spacer()
                
                Text ("  :)")
                Image (systemName: "character.bubble.fill")
                TextField("Enter text...", text: $userInput)
                    .accentColor(.gray)
                
                Button("Say It") {
                    print(userInput)
                    
                let utterance = AVSpeechUtterance(string:userInput)
                utterance.pitchMultiplier = 9
                synth.speak(utterance)
                
                    
//var pitch: Float { get set }

                    
            }
                .buttonStyle(.borderedProminent)
                .accentColor(.black)
                
            }
        }
            
        }
    }
}

#Preview {
    ContentView()
}
