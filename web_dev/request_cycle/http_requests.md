# Release 0
2. Common HTTP status codes include:
	* 200 OK (a successful request)
	* 300 Multiple Choices (there is more than one of the page requested)
	* 400 Bad Request (unsuccessful)
	* 401 Unauthorized (unsuccessful)
	* 403 Forbidden (unsuccessful)
	* 404 Not Found (unsuccessful)
	* 510 Internal Server Error (unsuccessful)
3. In a GET request, parameters (which are part of the URL) stay in the browser history, but they do not in POST requests, making POST a bit safer. POST is better for sending sensitive information. GET requests can be bookmarked, while POST requests cannot. POST requests are more difficult to hack. GET only allows ASCII characters and URL length is restricted, while with POST, binary data is also allowed and there are no restrictions on form data length. [Get vs. Post](http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests)

4. A cookie is
