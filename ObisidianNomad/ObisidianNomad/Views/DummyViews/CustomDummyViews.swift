//
//  CustomDummyViews.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

struct CustomDummyView: View {
    public var title: String = "Custom Dummy View"
    var body: some View {
        switch title {
        case "LoginView1":
            LoginView1(dataModel: .constant(LoginViewModel()))
        default:
            dummyView()
        }
    }
    private func dummyView() -> some View {
        ZStack {
            /*
            Rectangle().fill(.blue.gradient)
            LinearGradient(
                gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
             */
            /*
            RadialGradient(
                gradient: Gradient(colors: [.blue, .white]),
                center: .center,
                startRadius: 5,
                endRadius: 1600
            )
             */
            /*
            AngularGradient(
                gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]),
                center: .center
            )
             */
            /*
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.clear]),
                startPoint: .top,
                endPoint: .bottom
            )
             */
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: .red, location: 0.1),
                    .init(color: .orange, location: 0.3),
                    .init(color: .yellow, location: 0.5),
                    .init(color: .green, location: 0.7),
                    .init(color: .blue, location: 0.9),
                    .init(color: .purple, location: 1)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(.all)
            VStack {
                Text("Hello World")
                    .padding()
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.white, .black]),
                                       startPoint: .top,
                                       endPoint: .bottom)
                    )
                Text("Hello World")
                    .padding()
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.white, .red, .black]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    )
                Circle()
                    .fill(
                        RadialGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]),
                                       center: .center,
                                       startRadius: 50,
                                       endRadius: 100)
                    )
                    .frame(width: 200, height: 200)
                Circle()
                    .fill(
                        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]),
                                        center: .center)
                    )
                    .frame(width: 200, height: 200)
            }.hidden()
        }
    }
}

#Preview {
    CustomDummyView()
}
