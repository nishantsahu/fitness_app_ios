//
//  ChecklistItem.swift
//  Fitness
//
//  Created by Nishant Sahu on 06/11/22.
//

import SwiftUI

struct ChecklistItem: View {
    
    var isToday: Bool
    var day: String
    var task: String
    var isCompleted: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isToday ? Color.theme.accent : Color.theme.backgrounColor)
                .frame(height: 80)
            HStack(alignment: .center, spacing: 20) {
                Text(day)
                Text("|").font(.largeTitle)
                Text(task)
                Spacer().frame(width: 30) 
                if isCompleted {
                    VStack {
                        Image(systemName: "checkmark")
                        Text("Complete")
                            .font(.caption2)
                    }
                } else {
                    VStack {
                        Image(systemName: "clock")
                        Text("Pending")
                            .font(.caption2)
                    }
                }
            }
        }
        .foregroundColor(isToday ? Color.theme.backgrounColor : Color.theme.accent)
    }
}

struct ChecklistItem_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistItem(isToday: false, day: "MON", task: "lifting and jogging", isCompleted: false)
    }
}
