//
//  ContentView.swift
//  FloatingButtonWithAnimatedMenu
//
//  Created by Ramill Ibragimov on 06.09.2020.
//

import SwiftUI

struct ContentView: View {
    @State var beatnig = false
    @State var open = false
    
    var body: some View {
        ZStack {
            
            Group {
                Button(action: {
                    
                }, label: {
                    ZStack {
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.green)
                        Text("1")
                            .foregroundColor(.white)
                    }
                })
                .offset(x: open ? -70 : 0, y: open ? -70 : 0)
                .scaleEffect(open ? 1 : 0)
                .animation(.default)
                
                Button(action: {
                    
                }, label: {
                    ZStack {
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.green)
                        Text("2")
                            .foregroundColor(.white)
                    }
                })
                .offset(x: open ? 70 : 0, y: open ? -70 : 0)
                .scaleEffect(open ? 1 : 0)
                .animation(.default)
                
                Button(action: {
                    
                }, label: {
                    ZStack {
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.green)
                        Text("3")
                            .foregroundColor(.white)
                    }
                })
                .offset(x: open ? 70 : 0, y: open ? 70 : 0)
                .scaleEffect(open ? 1 : 0)
                .animation(.default)
                
                Button(action: {
                    
                }, label: {
                    ZStack {
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.green)
                        Text("4")
                            .foregroundColor(.white)
                    }
                })
                .offset(x: open ? -70 : 0, y: open ? 70 : 0)
                .scaleEffect(open ? 1 : 0)
                .animation(.default)
            }
            
            
            
            
            Button(action: {
                open.toggle()
            }, label: {
                ZStack {
                    Circle()
                        .frame(width: 95, height: 95, alignment: .center)
                        .foregroundColor(.green)
                        .opacity(0.4)
                        .scaleEffect(beatnig ? 0.9 : 0)
                        .onAppear() {
                            beatnig = true
                        }
                        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                    Circle()
                        .frame(width: 70, height: 70, alignment: .center)
                        .foregroundColor(.green)
                    Image(systemName: "plus")
                        .font(.system(size: 42, weight: .bold))
                        .foregroundColor(.white)
                }.rotationEffect(.degrees(open ? 45 : 0))
                .animation(Animation.spring(response: 0.5, dampingFraction: 0.2, blendDuration: 0.2))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
