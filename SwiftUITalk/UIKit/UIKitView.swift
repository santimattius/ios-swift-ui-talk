//
//  UIKitView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import SwiftUI

struct UIKitView: View {
    @State var course =  CourseRepository.courses
    @State private var selectedCourse: Course?

    var body: some View {
        NavigationStack{
            List {
                ForEach(course, id: \.id){ course  in
                    CourseRow(course: course)
                        .onTapGesture {
                            self.selectedCourse = course
                        }
                }
           }.navigationTitle(Text("iOS Courses"))
        }.sheet(item: self.$selectedCourse) { course in
            WebView(url: URL(string: course.url)!)
            .presentationDetents([
                .medium,
                .large
            ])
            .presentationDragIndicator(.visible)
        }
    }
}

struct UIKitView_Previews: PreviewProvider {
    static var previews: some View {
        UIKitView()
    }
}
