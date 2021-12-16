//
//  bottom.swift
//  socialistTriviaApp
//
//  Created by JPL-ST-SPRING2021 on 12/15/21.
//  Copyright © 2021 Willie. All rights reserved.
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
