//
//  LoginView1.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 10/05/24.
//

import SwiftUI
import UIKit

struct LoginView1: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var dataModel: LoginViewModel
    @ObservedObject var singletonHelper: GenericSingletonHelper = GenericSingletonHelper.shared
    private let isPhone: Bool = (UIDevice.current.userInterfaceIdiom == .phone)
    
    var body: some View {
        GeometryReader { geometryProxy in
            ZStack(alignment: .center) {
                // 1. Background
                LinearGradient(gradient: Constants.shared.gradient4,
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                
                // 2. Layout for the actual content
                if horizontalSizeClass == .compact || (horizontalSizeClass == .regular && singletonHelper.orientation.isPortrait) {
                    VStack(alignment: .center) {
                        contentGroup
                         Rectangle().hidden().frame(height: 100)
                    }
                    .frame(width: geometryProxy.size.width * 0.8)
                    .padding()
                } else {
                    HStack(alignment: .center) {
                        Spacer()
                        contentGroup
                            .frame(maxWidth: 320)
                        Spacer()
                    }
                    .frame(width: geometryProxy.size.width * 0.8)
                    .frame(maxWidth: 717)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundStyle(.white.opacity(0.05))
                    }
                }
            }
        }
        .animation(.default, value: horizontalSizeClass)
        .tint(.customAccent)
    }
    
    private var contentGroup: some View {
        Group {
            logo
            formContent
        }
    }
    
    private var logo: some View {
        Image(.img5)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: isPhone ? (self.singletonHelper.orientation.isLandscape ? 256 : 256) : 384)
            .foregroundStyle(Constants.shared.gradient2)
    }
    
    private var formContent: some View {
        VStack(alignment: .center) {
            TextField("User Id", text: $dataModel.userId)
                .fontWeight(dataModel.userId.isEmpty ? .regular : .bold)
                .foregroundColor(.white)
            SecureField("Password", text: $dataModel.password)
                .fontWeight(dataModel.password.isEmpty ? .regular : .bold)
                .foregroundColor(.white)
            HStack {
                Text("Remember Me")
                    .foregroundStyle(Color.white)
                CustomToggle(
                    isOn: $dataModel.rememberMe,
                    activeColor: .customControl,
                    inactiveColor: .gray
                )
            }
            .padding()
            Button(action: dataModel.loginAction) {
                Text("Login")
                    .frame(minWidth: 64, maxWidth: .infinity)
                    .tint(.customControl)
            }
            .disabled(dataModel.disableLogin)
            .buttonStyle(.borderedProminent)
            .tint(.customControl)
        }
        .textFieldStyle(CustomTextFieldStyle(
            borderColor: AnyShapeStyle(Color.customAccent),
            borderWidth: 2,
            backgroundColor: AnyShapeStyle(Color.white.opacity(0.2)),
            textColor: AnyShapeStyle(Color.white)
        ))
    }
}

#Preview {
    LoginView1(dataModel: .constant(LoginViewModel()))
}

