//
//  CourseListView.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 24/10/22.
//

import SwiftUI

struct CourseListView: View {
    
    @State var courses = CourseRepository.courses
    @State private var selectedCourse: Course?
    
    var body: some View {
        List{
            ForEach(courses){ course in
                ZStack {
                    CourseRow(course: course)
                        .contextMenu{
                            Button(action: {
                               
                            }) {
                                HStack{
                                    Text( course.favorite ? "Remove from favorite" : "Add to favorite")
                                    Image(systemName: "heart")
                                }
                            }
                    }.onTapGesture {
                        self.selectedCourse = course
                    }
                    .actionSheet(item: self.$selectedCourse){ course in
                        ActionSheet(
                            title: Text("Indicate your action to take"),
                            message: nil,
                            buttons: [
                                .default(Text( course.favorite ? "Remove from favorite" : "Add to favorite"), action: {
                                  
                                }),
                                //TODO: colocar aquí más opciones si se desea
                                .cancel()
                        ])
                    }
                }
                
            }
        }
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
                .previewDisplayName("Card")
            CourseListView()
                .previewDisplayName("List")
        }
    }
}
