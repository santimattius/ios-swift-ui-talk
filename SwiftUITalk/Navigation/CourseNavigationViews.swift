//
//  CourseNavigationViews.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 24/10/22.
//

import SwiftUI

struct CourseNavigationViews: View {
    @State var course =  CourseRepository.courses

    var body: some View {
        List {
            ForEach(course, id: \.id){ course  in
                CourseRow(course: course)
            }
       }
    }
}

struct CourseDetailView: View {
    
    let course: Course
    
    var body: some View{
        VStack(alignment:.leading){
          Image(course.image)
              .resizable()
              .aspectRatio(contentMode: .fit)
          
          Text(course.name)
              .font(.system(.title, design: .rounded))
              .fontWeight(.black)
              .lineLimit(2)
              .padding([.leading,.trailing, .bottom])
            
          Text(course.description)
                .font(.system(.body, design: .rounded))
                .padding([.leading,.trailing])
          
          Spacer()
      }
    }
}

struct CourseNavigationViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CourseNavigationViews()
            CourseDetailView(course: CourseRepository.courses[4])
        }
    }
}
