//
// DCCards
// Created by Chetan Aggarwal.


import SwiftUI

public struct Generic3DCardView: View {
    @State var ValueTranslation : CGSize = .zero
    @State var isDragging = false
    var viewModel: CardViewDetails
    
    public init(viewModel: CardViewDetails) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        ZStack{
            Image(viewModel.backgroundImage).resizable().scaledToFill()
                .frame(
                    width: viewModel.backgroundFrame.width,
                    height: viewModel.backgroundFrame.height)
                .overlay(
                    Rectangle()
                        .frame(
                            width: viewModel.overlayFrame.width,
                            height: viewModel.overlayFrame.height)
                        .colorInvert()
                        .blur(radius: viewModel.overlayBlur)
                        .offset(x: -ValueTranslation.width / 1.5, y: -ValueTranslation.height / 1.5)
                    
                )
                .clipped()
            Image(viewModel.characterImage).resizable().scaledToFill()
                .offset(x: viewModel.characterOffset.x, y: viewModel.characterOffset.y)
                .frame(
                    width: viewModel.characterFrame.width,
                    height: viewModel.characterFrame.height)
                .offset(x: ValueTranslation.width / 30, y: ValueTranslation.height / 30)
            
        }
        
        .frame(width: 1000, height: 1000)
        .background(viewModel.viewBackgroundColor)
        
        .rotation3DEffect(
            .degrees(isDragging ? 10 : 0),
            axis: (x: -ValueTranslation.height, y: ValueTranslation.width, z: 0.0)
        )
        .gesture(DragGesture()
            .onChanged({ value in
                withAnimation {
                    ValueTranslation = value.translation
                    isDragging = true
                }
            })
                .onEnded({ vaule in
                    withAnimation {
                        ValueTranslation = .zero
                        isDragging = false
                    }
                })
        )
    }
}

#Preview {
    let viewModel = CardViewDetails(
        backgroundImage: "BatmanBGCard",
        characterImage: "batman",
        backgroundFrame: CardViewDetails.Frame(width: 316, height: 417),
        overlayFrame: CardViewDetails.Frame(width: 300, height: 50),
        overlayBlur: 50,
        characterOffset: CardViewDetails.Point(x: 0, y: 5),
        characterFrame: CardViewDetails.Frame(width: 180, height: 180),
        viewBackgroundColor: .black
    )
    
    return Generic3DCardView(viewModel: viewModel)
}
