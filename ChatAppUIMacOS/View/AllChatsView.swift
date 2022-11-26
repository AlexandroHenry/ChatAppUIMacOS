//
//  AllChatsView.swift
//  ChatAppUIMacOS
//
//  Created by Seungchul Ha on 2022/11/26.
//

import SwiftUI

struct AllChatsView: View {
    @EnvironmentObject var homeData: HomeViewModel
    
    var body: some View {
        
        // Side Tab View...
        VStack {
            
            HStack {
                
                Spacer()
                
                Button {
                    
                } label: {
                    
                    Image(systemName: "plus")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.horizontal)
            
            HStack {
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Search", text: $homeData.search)
                    .textFieldStyle(PlainTextFieldStyle())
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            .background(Color.primary.opacity(0.15))
            .cornerRadius(10)
            .padding()
            
            List(selection: $homeData.selectedrecentMsg) {
                
                ForEach(homeData.msgs) { message in
                    
                    // Message View....
                    NavigationLink {
                        DetailView(user: message)
                    } label: {
                        RecentCardView(recentMsg: message)
                    }
                }
            }
            .listStyle(SidebarListStyle())
        }
    }
}

struct AllChatsView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
