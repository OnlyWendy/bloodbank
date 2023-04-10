//
//  SecondScreen.swift
//  BloodGroup
//
//  Created by Jay on 27/03/2023.
//

import SwiftUI

struct BloodGroup: View {
    
    private var data : [Int] = Array(1...5)
    var colors: [Color] = [Color("red"), Color("Pink"), Color("pink2"), Color("pink3"), Color("pink4")]
    var groups = ["A", "B", "O", "AB", "HH"]
    
    private let adaptiveColumns = {
        GridItem(.adaptive(minimum: 170))
    }
    
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    
    var btnBack : some View { Button( action:{
        self.presentationMode.wrappedValue.dismiss()
            }){
                Image(systemName:"chevron.backward")
                    .foregroundColor(Color.black)
                    .font(Font.system(size:17, weight: .medium))
            }
    }
    
    var items: [GridItem] = Array(repeating: .init(.adaptive(minimum: 160)), count: 2)
            
    var body: some View{

        VStack{
            
            LazyVGrid(columns:items, spacing: 20){
                ForEach(0 ..< colors.count) {
                    
                    Text(self.groups[$0])
                        .font(Font.system(size:25, weight: .bold))
                        .frame(width: 160, height: 100)
                        .foregroundColor(.white)
                        .background(self.colors[$0])
                        .cornerRadius(10)
                }
                
              
            }.padding(.top, 40)
            
            Spacer()
            
           NavigationLink(destination: Profile(), label: {
                Text("Continue")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(10)
                    .padding(.horizontal, 100)
                    .background(.red)
                    .cornerRadius(15)
            })
            
        }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
            .navigationBarTitle("Pick your Blood Group")
            .navigationBarTitleDisplayMode(.inline)
        
    }
    
    
        
    }





struct BloodGroup_Previews: PreviewProvider {
    static var previews: some View {
        BloodGroup()
    }
}
