//
//  bottom.swift
//  socialistTriviaApp
//


import SwiftUI

struct Bottom: View {
    
    let onClick: () -> Void
    
    var body: some View {
        HStack{
            Button(action:
                onClick,
                   label: {
                Text("Next")
            })
        }.background(Color.green.opacity(0.4))
    }
}

struct BottomText_Previews: PreviewProvider {
    static var previews: some View {
        Bottom(){}
    }
}
