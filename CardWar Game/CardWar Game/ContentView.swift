import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack(spacing: 30) {
                    
                    Image(playerCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120)
                    
                    Image(cpuCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120)
                }
                
                Spacer()
                // Deal Button
                Button {
                // Shuffle cards
                    playerCard = "card\(Int.random(in: 2...14))"
                    cpuCard = "card\(Int.random(in: 2...14))"
                } label: {
                    Image("button")
                }
                .padding(.top, 30)
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Text("\(playerScore)")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Text("\(cpuScore)")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
