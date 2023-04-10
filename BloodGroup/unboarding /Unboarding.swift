//
//  FirstScreen.swift
//  BloodGroup
//
//  Created by Jay on 27/03/2023.
//

import SwiftUI

struct Unboarding: View {
    
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    
    var btnBack : some View { Button( action:{
        self.presentationMode.wrappedValue.dismiss()
            }){
                Image(systemName:"chevron.forward")
                    .foregroundColor(Color.black)
                    .font(Font.system(size:17, weight: .medium))
            }
    }
    @State var screen = 0
    var body: some View {
        VStack( spacing: 20){
            Spacer()
            Image("image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            Text("Testing")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black).padding(.top)
            Text("Dramascally unfeish outing vortis before maintailed partions").fontWeight(.none).kerning(1.3)
            Spacer()
            
           NavigationLink(destination: BloodGroup(), label: {
                Text("Let's Begin")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(10)
                    .padding(.horizontal, 100)
                    .background(.red)
                    .cornerRadius(15)
            })
        .padding(20)
        .frame(maxWidth:.infinity)
    }
    
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(trailing: btnBack)
        .navigationBarTitleDisplayMode(.inline)
  
}

     
}

struct Unboarding_Previews: PreviewProvider {
    static var previews: some View {
        Unboarding()
    }
}

