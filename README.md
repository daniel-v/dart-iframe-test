dart-iframe-test
================

It seems like that after loading a page into an iframe, the references to the peviously stored contentWindow will not work as intended.

When running this test, the expected output (and iframe.dart compiled to JS does give that) is:

<pre>PARENT RECEIVED DATA: READY
IFRAME RECEIVED DATA:  Using previously stored `win` variable to talk back 
IFRAME RECEIVED DATA:  Using `iframe.contentWindow` to talk back
IFRAME RECEIVED DATA:  Using event.source to talk back </pre>

**Problem:**
The first message (using the `win` variable) never gets delivered to the embedded document.
