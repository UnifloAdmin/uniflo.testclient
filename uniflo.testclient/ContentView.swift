//
//  ContentView.swift
//  uniflo.testclient
//
//  Created by Naresh Chandra on 1/7/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.1, green: 0.2, blue: 0.45),
                    Color(red: 0.2, green: 0.3, blue: 0.6)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Spacer()
                
                // App Icon/Logo placeholder
                Image(systemName: "app.badge.checkmark.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.white)
                    .scaleEffect(isAnimating ? 1.0 : 0.8)
                    .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: isAnimating)
                
                // App Title
                VStack(spacing: 12) {
                    Text("Uniflo TestClient")
                        .font(.system(size: 42, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                    Text("Welcome to your app")
                        .font(.title3)
                        .foregroundColor(.white.opacity(0.8))
                }
                
                Spacer()
                
                // Features Section
                VStack(alignment: .leading, spacing: 20) {
                    FeatureRow(icon: "checkmark.circle.fill", title: "Ready  Go", description: "Your app is configured and ready")
                    FeatureRow(icon: "bolt.circle.fill", title: "Fast & Reliable", description: "Built with Swift & SwiftUI")
                    FeatureRow(icon: "shield.checkered", title: "Secure", description: "Privacy-focused architecture")
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                // Get Started Button
                Button(action: {
                    // Action for getting started
                }) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.45))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 40)
            }
        }
        .onAppear {
            isAnimating = true
        }
    }
}

struct FeatureRow: View {
    let icon: String
    let title: String
    let description: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
                .font(.system(size: 28))
                .foregroundColor(.white)
                .frame(width: 40)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.7))
            }
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
