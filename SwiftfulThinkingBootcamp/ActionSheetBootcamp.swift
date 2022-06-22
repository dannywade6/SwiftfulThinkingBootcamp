//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 22/06/2022.
//

import SwiftUI

struct ActionSheetBootcamp: View {

    @State var showActionSheet: Bool = false
    @State var actionSheetOption: actionSheetOptions = .isOtherPost

    enum actionSheetOptions {
        case isMyPost
        case isOtherPost
    }

    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)

            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }

    func getActionSheet() -> ActionSheet {
//        return ActionSheet(title: Text("Hello"))

//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("This is the title!"),
//            message: Text("This is the message"),
//            buttons: [button1, button2, button3])

        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // Add code to share
        }

        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // Add code to report this post
        }

        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // Add code to delete this post
        }

        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")

        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
