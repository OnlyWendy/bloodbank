//
//  Profile.swift
//  BloodGroup
//
//  Created by Jay on 01/04/2023.
//

import SwiftUI


struct Profile : View {
    @State var username: String = ""
    @State var email: String = ""
    @State var date = Date()
    @State var phonenumber: String = ""
    
    
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    
    var btnBack : some View { Button( action:{
        self.presentationMode.wrappedValue.dismiss()
            }){
                Image(systemName:"chevron.backward")
                    .foregroundColor(Color.black)
                    .font(Font.system(size:17, weight: .medium))
            }
    }
    
    var body: some View{
        VStack{
            
            Image("user")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom,75)
                
           
            Form{
                Section{
                    Text("Name")
                        .font(.headline)
                        
                    TextField("Rhonda Rhodes", text: $username)
                        .padding(.all)
                        .foregroundColor(.black)
                        .background(.white)
                       .cornerRadius(10)
                       .border(.black)
                    
                    Text("Email")
                        .font(.none)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    TextField("Rhonda@outlook.com", text: $email)
                        .padding(.all)
                        .foregroundColor(.black)
                        .background(.white)
                       .cornerRadius(10)
                       .border(.black)
                    
                    Text("Mobile Number")
                        .font(.none)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    TextField("Enter number", text: $phonenumber)
                        .padding(.all)
                        .foregroundColor(.black)
                        .background(.white)
                       .cornerRadius(10)
                       .border(.black)
                    
                    
                    
                    
                    Text("Date of Birth")
                        .font(.none)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                     DatePicker("pick a date", selection: $date, displayedComponents: .date)
                        .padding(.all)
                        .foregroundColor(.black)
                        .background(.white)
                       .cornerRadius(10)
                       .border(.black)

                }
                .padding(.horizontal,16)
            }
            
            Spacer()
            
            NavigationLink(destination: {}, label: {
                Text("Next")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(10)
                    .padding(.horizontal, 100)
                    .background(.red)
                    .cornerRadius(15)
                
                
            })
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Create your profile")
        .navigationBarItems(leading: btnBack)
        .navigationBarTitleDisplayMode(.inline)
}
       
}
                            
                            


    
    
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
