import SwiftUI
import WebKit

struct AdFrameView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.isOpaque = false
        webView.backgroundColor = .clear
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let htmlContent = """
        <html>
        <body style="margin:0; padding:0;">
            <iframe 
                src="https://cs.qads.cloud" 
                data-set-id="123456" <!-- Get this in your dashboard --> data-redirect-url="https://example.com" <!-- Redirect URL --> style="width:100%; border:none; height: 100vh;">
            </iframe>
        </body>
        </html>
        """
        uiView.loadHTMLString(htmlContent, baseURL: nil)
    }
}
