//
//  ContentView.swift
//  BloodGroup
//
//  Created by Jay on 23/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var screen = 0;
  
    
    var body: some View {
        NavigationView{
            Unboarding();
        }
        .navigationTitle("Let's Begin")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
    
    

