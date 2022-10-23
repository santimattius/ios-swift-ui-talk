//
//  TextView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in efficitur risus. Cras porta aliquet ultrices. Suspendisse potenti. Aliquam ipsum diam, gravida id ex at, semper varius ante. Sed mattis, sapien vitae semper pulvinar, diam magna sodales est, eget suscipit magna neque in nibh. Vestibulum non fringilla libero, at malesuada dolor. Etiam nisi arcu, sollicitudin ac tristique eget, viverra non felis. Suspendisse a eros ex. Nullam sollicitudin ornare mi, in congue ipsum malesuada in. Vestibulum vitae euismod neque. !")
            .padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
