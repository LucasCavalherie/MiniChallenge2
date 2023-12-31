//
//  Countdown.swift
//  MiniChallenge2
//
//  Created by Lucas Cavalherie on 29/08/23.
//

import SwiftUI

var timer = Timer
    .publish(every: 1, on: .main, in: .common)
    .autoconnect()

struct Clock: View {
    var counter: Int
    var countTo: Int
    
    var body: some View {
        VStack {
            Text(counterToMinutes())
                .font(.title3)
                .foregroundColor(Color("Red"))
                .fontWeight(.bold)
        }
    }
    
    func counterToMinutes() -> String {
        let currentTime = countTo - counter
        let seconds = currentTime % 60
        
        return "\(seconds < 10 ? "0" : "")\(seconds)"
    }
    
}

struct ProgressTrack: View {
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 60, height: 60)
    }
}

struct ProgressBar: View {
    var counter: Int
    var countTo: Int
    
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 60, height: 60)
            .overlay(
                Circle().trim(from:0, to: progress())
                    .stroke(
                        style: StrokeStyle(
                            lineWidth: 5,
                            lineCap: .round,
                            lineJoin:.round
                        )
                    )
                    .foregroundColor(Color("Red")).animation(
                    .easeInOut(duration: 0.2), value: progress()
                    )
                    .rotationEffect(.degrees(-90))
            )
    }
    
    func progress() -> CGFloat {
        return (CGFloat(counter) / CGFloat(countTo))
    }
}

struct Countdown: View {
    @Binding var counter: Int
    var countTo: Int
    var onEnding: () -> Void
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                        
                ProgressTrack()
                ProgressBar(counter: counter, countTo: countTo)
                Clock(counter: counter, countTo: countTo)
            }
        }.onReceive(timer) { time in
            if self.counter < self.countTo {
                self.counter += 1
            }else{
                counter = countTo
                timer.upstream.connect().cancel()
                onEnding()
            }
        }
    }
}

struct Countdown_Previews: PreviewProvider {
    static var previews: some View {
        Countdown(counter: .constant(0), countTo: 2){
            print("b")
        }
    }
}

