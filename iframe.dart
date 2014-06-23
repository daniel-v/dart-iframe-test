import 'dart:html';

void main() {

  IFrameElement iframe = querySelector("#testframe");
  WindowBase win = iframe.contentWindow;

  // The communication will be started from the embedded frame
  // We will attempt to respond to the "READY" message by accessing the iframe's window object in different ways
  window.onMessage.listen((MessageEvent ev){
    print("PARENT RECEIVED DATA: ${ev.data}");
    win.postMessage("Using previously stored `win` variable to talk back", "*");
    iframe.contentWindow.postMessage("Using `iframe.contentWindow` to talk back", "*");
    (ev.source as WindowBase).postMessage("Using event.source to talk back", "*");
  });

  iframe.src = "./embeddedframe.html";
}
