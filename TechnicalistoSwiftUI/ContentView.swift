//
//  ContentView.swift
//  Technicalisto_project
//
//  Created by Technicalisto.
//

import SwiftUI
import Introspect

@available(iOS 15.0, *)
struct ContentView: View {
    
    @State var no1: String = ""
    @State var no2: String = ""
    @State var no3: String = ""
    @State var no4: String = ""
    @State var no5: String = ""
    
    enum Field {
        case no1
        case no2
        case no3
        case no4
        case no5
    }
    
    @FocusState private var focusedField: Field?
    
    var body: some View {

        VStack {
            
            Text("Technicalisto")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            VStack {
            ZStack {
            HStack {
    
                TextField("", text: $no1)
                .padding()
                .background(Color.gray)
                .foregroundColor(Color.black)
                .frame(width: 50)
                .cornerRadius(5.0)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
                .introspectTextField { textField in
                 textField.becomeFirstResponder()
                }
                .focused($focusedField, equals: .no1)
                .onChange(of: no1) { newValue in
                    if newValue.count == 1 {
                    focusedField = .no2
                    }
                }
                
                
                TextField("", text: $no2)
                .padding()
                .background(Color.gray)
                .foregroundColor(Color.black)
                .frame(width: 50)
                .cornerRadius(5.0)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
                .focused($focusedField, equals: .no2)
                .onChange(of: no2) { newValue in
                    if newValue.count == 1 {
                    focusedField = .no3
                    }
                }
                
                TextField("", text: $no3)
                .padding()
                .background(Color.gray)
                .foregroundColor(Color.black)
                .frame(width: 50)
                .cornerRadius(5.0)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
                .focused($focusedField, equals: .no3)
                .onChange(of: no3) { newValue in
                    if newValue.count == 1 {
                    focusedField = .no4
                    }
                }
                
                TextField("", text: $no4)
                .padding()
                .background(Color.gray)
                .foregroundColor(Color.black)
                .frame(width: 50)
                .cornerRadius(5.0)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
                .focused($focusedField, equals: .no4)
                .onChange(of: no4) { newValue in
                    if newValue.count == 1 {
                    focusedField = .no5
                    }
                }
                
                TextField("", text: $no5)
                .padding()
                .background(Color.gray)
                .foregroundColor(Color.black)
                .frame(width: 50)
                .cornerRadius(5.0)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
                .focused($focusedField, equals: .no5)
            

            }}}}
        
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
