//
//  UIKitView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct UIKitView: View {
    @State var course =  CourseRepository.courses

    var body: some View {
        List {
            ForEach(course, id: \.id){ course  in
                CourseRow(course: course)
            }
       }
    }
}

struct UIKitView_Previews: PreviewProvider {
    static var previews: some View {
        UIKitView()
    }
}
