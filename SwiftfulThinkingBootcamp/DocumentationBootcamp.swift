//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 13/07/2022.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    //MARK: - PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    @State var showAlert: Bool = false
    
    //MARK: - BODY
    
    /*
     Working Copy - Thing's to do:
     1). Fix Title
     2). Fix Alert
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("ALERT", action: {
                    showAlert.toggle()
                })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert!")
            })
            }
        } // END: NAV
    }
    
    ///  This is the foreground layer that gholds a ScrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    //MARK: - FUNCTIONS
    
    /// Gets an Alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will not have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi))
    /// ```
    ///
    /// - Warning: There is no addidional message in this alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an Alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: - FUNCTIONS

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
