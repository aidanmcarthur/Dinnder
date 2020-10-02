//
//  GroupCard.swift
//  Dinnder
//
//  Created by Aidan McArthur on 10/1/20.
//

import SwiftUI

struct GroupCard: View {
    
    var groupMembers = [String]()
    
    init(){
        
    }
    
    mutating func addMember(newMember: String){
        groupMembers.append(newMember)
    }
    
    
    var body: some View {
        
        HStack(){
            VStack(alignment: .leading){
                Text("Group Name")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    
                    
            }
            Spacer()
        }
    
        
        
        
        .frame(minWidth: UIScreen.main.bounds.width * 0.95, idealWidth: UIScreen.main.bounds.width * 0.95, maxWidth: UIScreen.main.bounds.width * 0.95, minHeight: UIScreen.main.bounds.height * 0.1, idealHeight: UIScreen.main.bounds.height * 0.1, maxHeight: UIScreen.main.bounds.height * 0.1, alignment: .center)
        .background(Color.white)
 
        .cornerRadius(10)
        .shadow(radius:10)
        
        
        
            
    }
}


struct GroupCard_Previews: PreviewProvider {
    static var previews: some View {
        VStack(){
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
            .font(.largeTitle)
            .fontWeight(.bold)
        }
        
        
    }
}
