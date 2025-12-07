//
//  ReadingNewsView.swift
//  wii_news_channel
//
//  Created by Tom on 06/12/2025.
//

import SwiftUI
import UIKit

func getCurrentTime() -> String {
    let formatter = DateFormatter()
    formatter.timeStyle = .short
    formatter.dateStyle = .none
    return formatter.string(from: Date())
}

struct ReadingNewsView: View {
    let currentDateTime = getCurrentTime()
    var body: some View {
        ZStack {
            Image("paper_background")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    StrokeText(text: currentDateTime, width: 3, color: .black)
                        .foregroundColor(.white)
                        .font(.custom("NewRodinPro-DB", size: 48))
                        .kerning(8)
                        .padding()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Last Updated 14h 21m ago")
                        .foregroundColor(.black.opacity(0.7))
                        .font(.custom("RodinNTLGPro-DB", size: 42))
                }
                Divider().padding(.bottom, 30)
                VStack {
                    Text("Federer calls for ATP/WTA merger, Gaudenzi sees chance for unity")
                        .foregroundColor(.black)
                        .font(.custom("RodinNTLGPro-DB", size: 48))
                        .padding(.bottom, 20)
                    HStack {
                        Spacer()
                        Label {
                            Text("RSS Flux")
                                .foregroundColor(.black.opacity(0.7))
                                .font(.custom("RodinNTLGPro-DB", size: 32))
                        } icon: {
                            Image(systemName: "newspaper.circle")
                                .font(.system(size: 42))
                                .foregroundColor(.black.opacity(0.7))
                        }
                    }.padding(.bottom, 20)
                        .padding(.trailing, 20)
                    Text("(Reuters) - Roger Federer called on Wednesday for a merger between the men's ATP Tour and the WTA, which runs the women's kicuit, as tennis wades through a lengthy cor virus shutdown with lower-level professionals in deep financial crisis.")
                        .foregroundStyle(.black)
                        .font(Font.custom("Georgia", size: 32))
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ReadingNewsView()
}
