//
//  AsyncAwaitDemo.swift
//  SwiftUITraining
//
//  Created by Muhammad Sohaib on 01/07/2024.
//

import SwiftUI

struct AsyncAwaitDemo: View {
    
    @State private var user: GitHubUser?
    
    var body: some View {
        VStack(spacing: 20) {
            
            AsyncImage(url: URL(string: user?.avatarUrl ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            } placeholder: {
                Circle()
                    .foregroundColor(.secondary)
            }
                .frame(width: 120, height: 120)
            
            Text(user?.login ?? "Login placeholder")
                .bold()
                .font(.title3)
            
            Text(user?.bio ?? "Bio placeholder")
                .padding()
            
            Spacer()
        }
        .padding()
        .task {
            do {
                user = try await getUser()                                                    
            } catch GHError.invalidURL{
                print("invalid url")
            } catch GHError.inavlidResponse{
                print("invalid response")
            } catch GHError.invalidData{
                print("invalid data")
            } catch {
                print("unexpected error")
            }
        }
    }
    
    func getUser() async throws -> GitHubUser {
        let endPoint = "https://api.github.com/users/academind"
        guard let url = URL(string: endPoint) else { throw GHError.invalidURL}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GHError.inavlidResponse
        }
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(GitHubUser.self, from: data)
        } catch {
            throw GHError.invalidData
        }
    }
}

#Preview {
    AsyncAwaitDemo()
}

class GitHubUser: Codable {
    let login: String
    let avatarUrl: String
    let bio: String
}

enum GHError: Error {
    case invalidURL
    case inavlidResponse
    case invalidData
}
