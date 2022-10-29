//
//  CourseNavigationViews.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 24/10/22.
//

import SwiftUI

struct CourseNavigationViews: View {
    
    @State var courses =  CourseRepository.courses
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path){
            List {
                ForEach(courses, id: \.id){ course  in
                    NavigationLink(value: course,label: {
                        CourseRow(course: course)
                    })
                }
            }
            .navigationDestination(for: Course.self, destination: { currentCourse  in
                CourseDetailView(course: currentCourse, path: $path)
            })
        }
    }
}

struct CourseDetailView: View {
    
    let course: Course
    @Binding var path: NavigationPath
    
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
            
            Button("Ir al curso siguient"){
                path.append(CourseRepository.courses[4])
            }
            .font(.system(.body, design: .rounded))
            .padding([.leading,.trailing,.top])
            
            Spacer()
        }
    }
}

struct CourseNavigationViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CourseNavigationViews()
                .previewDisplayName("Main")
            //            CourseDetailView(course: CourseRepository.courses[4])
            //                .previewDisplayName("Detail")
        }
    }
}
