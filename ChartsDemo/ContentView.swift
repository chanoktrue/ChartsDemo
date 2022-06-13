//
//  ContentView.swift
//  ChartsDemo
//
//  Created by Thongchai Subsaidee on 13/6/22.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    let weekdays = Calendar.current.shortWeekdaySymbols
    let steps = [10531, 6091, 7200, 8311, 7403, 6503, 9230]
    
    var body: some View {
        Chart {
            ForEach(weekdays.indices, id: \.self) { index in
                
                BarMark(
                    x: .value("Day", weekdays[index]),
                    y: .value("Steps", steps[index])
                )
                .foregroundStyle(by: .value("Day", weekdays[index]))
                .annotation {
                    Text("\(steps[index])")
                }
                
            
                LineMark(
                    x: .value("Day", weekdays[index]),
                    y: .value("Steps", steps[index])
                )
                .foregroundStyle(.purple)
                .lineStyle(StrokeStyle(lineWidth: 4.0))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
