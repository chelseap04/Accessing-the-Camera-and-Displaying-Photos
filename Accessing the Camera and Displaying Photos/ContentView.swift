//
//  ContentView.swift
//  Accessing the Camera and Displaying Photos
//
//  Created by Chelsea Poppleton on 5/27/23.
//

import SwiftUI

struct ContentView: View {
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    var body: some View {
        VStack {
            Image(uiImage: selectedImage ?? UIImage(named: "flower1-removebg-preview")!)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Button("Pick a photo!") {
                isImagePickerShowing = true
            }
        }
        .sheet(isPresented: $isImagePickerShowing) {
            ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing)
                .padding()
        }
    }
}

struct ContentView_Previews:  PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
