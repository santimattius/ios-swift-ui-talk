//
//  CourseListView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 24/10/22.
//

import SwiftUI

struct CourseListView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CourseRow: View {
   var course: Course
       
   var body: some View{
       HStack(alignment: .top){
          Image(course.image)
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width:50, height:50)
              .cornerRadius(10)
           VStack(alignment:.leading){
               Text(course.name)
                   .font(.headline)
               Text(course.description)
                   .lineLimit(2)
           }
      }.padding()
   }
}

struct CourseListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CourseRow(course: CourseRepository.courses[0])
            CourseListView()
        }
    }
}
