//
//  ChapterXX1ContentView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/24.
//

import SwiftUI

struct ChapterXX1ContentView: View {
    @State var currentItem: CardModel?
    @State var showDetailPage: Bool = false
    
    @Namespace var animation
    @State var isAnimationView: Bool = false
    @State var animatinContent: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Today")
                            .font(.title.bold())
                        Text("22 November")
                            .font(.callout.bold())
                            .opacity(0.8)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image("Avator")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }
                .padding(.horizontal)
                .opacity(isAnimationView ? 0 : 1)
                
                ForEach(cardItem) {item in
                    Button {
                        withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                            currentItem = item
                            showDetailPage = true
                        }
                    } label: {
                        CardView(item: item)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                            .scaleEffect(currentItem?.id == item.id && showDetailPage ? 1 : 0.90)
                        
                    }
                    .buttonStyle(ScaledButtonStyle())
                    .opacity(showDetailPage ? (currentItem?.id == item.id ? 1 : 0) : 1)
                }
            }
        }
        .overlay {
            if let currentItem = currentItem, showDetailPage {
                DetailView(item: currentItem)
                    .edgesIgnoringSafeArea(.top)
            }
        }
    }
    @ViewBuilder
    func CardView(item: CardModel) -> some View {
        VStack(alignment: .leading) {
            ZStack {
                GeometryReader { proxy in
                    let size = proxy.size
                    Image(item.appLogo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width, height: size.height)
                        .clipped()
                    VStack(alignment: .leading) {
                        Spacer()
                        Text(item.platformTitle)
                            .font(.callout.bold())
                        Text(item.bannerTitle)
                            .font(.title.bold())
                        Text(item.appDescription)
                            .font(.title3.bold())
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(LinearGradient(colors: [Color.clear, item.color.opacity(0.8)], startPoint: .top, endPoint: .bottom))
                }
                .frame(height: 400)
                .clipShape(.rect(topLeadingRadius: 20, topTrailingRadius: 20))
            }
            
            HStack(spacing: 12) {
                Image(item.appLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(.rect(cornerRadius: 15))
                VStack(alignment: .leading, spacing: 4) {
                    Spacer()
                    Text(item.platformTitle)
                        .font(.caption.bold())
                    Text(item.bannerTitle)
                        .font(.title3.bold())
                    Text(item.appDescription)
                        .font(.caption.bold())
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Text("GET")
                        .fontWeight(.bold)
                        .foregroundStyle(.blue)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 20)
                        .background {
                            Capsule().fill(.ultraThinMaterial)
                        }
                }
            }
            .padding(.horizontal)
            .padding(.bottom)
            .background(item.color)
            .clipShape(.rect(bottomLeadingRadius: isAnimationView ? 0 : 20, bottomTrailingRadius: isAnimationView ? 0 : 20))
        }
        .matchedGeometryEffect(id: item.id, in: animation)
    }
    
    func DetailView(item: CardModel) -> some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                CardView(item: item)
                    .scaleEffect(isAnimationView ? 1 : 0.90)
                
                VStack {
                    Text("\(dummtText)")
                        .multilineTextAlignment(.leading)
                        .lineSpacing(10)
                        .padding(.bottom, 20)
                    
                    Divider()
                    
                    Button {
                        
                    } label: {
                        Label {
                            Text("Share Story")
                        } icon: {
                            Image(systemName: "square.and.arrow.up")
                        }
                        .foregroundColor(.primary)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 25)
                        .background {
                            RoundedRectangle(cornerRadius: 30, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(.ultraThinMaterial)
                        }
                    }
                }
                .padding()
                .opacity(animatinContent ? 1 : 0)
                .scaleEffect(isAnimationView ? 1 : 0, anchor: .top)
            }
        }
        .overlay(alignment: .topTrailing) {
            Button {
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                    isAnimationView = false
                    animatinContent = false
                }
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7).delay(0.05)) {
                    currentItem = nil
                    showDetailPage = false
                }
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
            }
            .padding([.top], safeArea().top)
            .padding(.trailing)
            .opacity(isAnimationView ? 1 : 0)
        }
        .transition(.identity)
        .onAppear() {
            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                isAnimationView = true
            }
            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7).delay(0.1)) {
                animatinContent = true
            }
        }
    }
}

#Preview {
    ChapterXX1ContentView()
        .preferredColorScheme(.dark)
}
struct ScaledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.90 : 1)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}

extension View {
    func safeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        
        return safeArea
    }
}
