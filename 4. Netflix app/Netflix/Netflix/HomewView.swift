//
//  HomewView.swift
//  Netflix
//
//  Created by lee on 7/23/24.
//

import SwiftUI

struct HomewView: View {
    @State var bigBanner: String = ""
    @State var dramas: [Drama] = []
    
    var body: some View {
        ScrollView{
            
            HStack{
                Image("logo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
                Spacer()
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
            }
            
            AsyncImage(url: URL(string: bigBanner)) { image in
                image
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 525)
            } placeholder: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray)
                    .frame(width: 300, height: 525)
                    .opacity(0.4)
                    .overlay(
                        ProgressView()
                            .tint(Color.white)
                    )
            }
            .overlay(alignment: .bottom){
                HStack{
                    Button(action: {
                        print("재생 버튼 클릭 됨")
                    }, label : {
                        Image(systemName: "play.fill")
                    })
                    .buttonStyle(.bordered)
                    
                    Button(action: {
                        print("info 버튼 클릭 됨")
                    }, label : {
                        Image(systemName: "info.circle")
                    })
                    .buttonStyle(.bordered)
                }
                .padding()
                
                
            }
            .background(.black)
            .foregroundStyle(.white)
            
            if dramas.count == 0{
                ProgressView()
                    .tint(Color.black)
                    .task{
                        let url = URL(string:"https://gvec03gvkf.execute-api.ap-northeast-2.amazonaws.com/")!
                        
                        let (data, _) = try! await URLSession.shared.data(from: url)
                        let decoder = JSONDecoder()
                        let dramaCollection = try! decoder.decode(DramaCollection.self, from: data)
                        
                        bigBanner = dramaCollection.bigBanner
                        dramas = dramaCollection.dramas
                    }
            }else{
                Text("Dramas 장착 완료")
            }
            
        }
    }
}

#Preview {
    HomewView()
}
