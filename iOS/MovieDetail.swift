//
//  MovieDetail.swift
//  The Netflix Apps
//
//  Created by badar on 24/12/20.
//

import SwiftUI

struct MovieDetail: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIngoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail()
    }
}
