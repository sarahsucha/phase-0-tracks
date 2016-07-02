# HTTP Requests

### What are some common HTTP status codes?
* 200 Range - Successful
  * 200 - OK
* 300 Range - Moved
* 400 Range - Bad Request
  * 401 - Unauthorized
  * 403 - Forbidden
  * 404 - Not Found
* 500 Range - Server Error
  * 504 - Gateway Timeout

resource: [https://www.smartlabsoftware.com/ref/http-status-codes.htm](https://www.smartlabsoftware.com/ref/http-status-codes.htm)

### What is the difference between a GET request and a POST request? When might each be used?
The key difference I see between GET and POST seems to be that with GET the parameters remain in the browser history whereas with POST they do not. This has many implications including that POST cannot be cached or bookmarked. Whenever you get the notification that the form will need to be resubmitted, you are using a page with a POST request.

POST requests should be used when data needs to be processed that may be sensitive.

Additionally there are some restrictions to length with GET that do not exist on POST requests.

resource:
[http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests](http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests)

### What is a cookie? How does it relate to HTTP requests?
Cookies are bits of text stored on your PC by your web browser. It may contain information about your user preferences, session token or other information the web site needs to track the user from one HTTP request to the next 
