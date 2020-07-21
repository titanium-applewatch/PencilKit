import SwiftUI
import PencilKit

struct Paint : UIViewRepresentable {
    func makeUIView(context: Context) -> PKCanvasView {
        let canvas = PKCanvasView()
        canvas.tool = PKInkingTool(.pen, color: .black, width: 30)
        if let window = UIApplication.shared.windows.first {
                    if let toolPicker = PKToolPicker.shared(for: window) {
                        toolPicker.addObserver(canvas)
                        toolPicker.setVisible(true, forFirstResponder: canvas)
                        canvas.becomeFirstResponder()
                    }
                }
        return canvas;
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
    }
}
