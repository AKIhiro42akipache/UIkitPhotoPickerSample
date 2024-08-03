//
//  ContentView.swift
//  UIKItImagePicker
//
//  Created by mogi yoshiki on 2022/10/03.
//

import SwiftUI

struct ContentView: View {
    @State var selectedImage = UIImage()
    @State var showingImagePicker = false
    
    var body: some View {
        VStack{
            Image(uiImage: self.selectedImage)
                .resizable()
                .frame(width: 300, height: 150)
            
            Button(action: {
                showingImagePicker = true
            }) {
                Text("フォトライブラリー")
            }
            .sheet(isPresented: $showingImagePicker, content: {
                ImagePicker(selectedImage: self.$selectedImage)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
