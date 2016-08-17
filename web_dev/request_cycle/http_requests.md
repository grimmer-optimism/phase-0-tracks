## HTTP Requests and Web Dev

Find the Thhing

2. Common HTTP Status Codes

Code 200 - ok
	The request has succeeded. The information returned with the response is dependent on the method used in the request.

Code 300 - Mulitple Choices
	The requested resource has different choices and cannot be resolved into one. For example, there may be several index.html pages depending on which language is wanted (such as Dutch).

Code 400 - Bad Request
	The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.

Code 403 - Forbidden
	The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.

Code 500 - Internal Server Error
	The server encountered an unexpected condition which prevented it from fulfilling the request.

**Question 3** Diff GET and POST

POST - submits data to be processeed to a specified resource
	POST requests are never cached
	POST requests do not remain in the browser history
	POST requests cannot be bookmarked
	POST requests have no restrictions on data length

GET - requests data from a specified resource

GET would be used if you are seeking information from the client. If you want to see if someone has visited a website you would issue a GET method to check if a cookie exists for the website and if so retrieve it.

A POST method would be used if you want to send information from the web server to the client's browser.

4. What is a cookie:

An HTTP cookie (also called web cookie, Internet cookie, browser cookie or simply cookie) is a small piece of data sent from a website and stored in the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past). They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers.
	



