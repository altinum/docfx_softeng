# HTTP and REST - Background Material

This document is intended to aid understanding.

## The HTTP Protocol

HTTP is a protocol built on a distributed client-server structure, based on a request-response communication model. It sits at the application layer of the TCP/IP model; the transport protocol used is typically TCP, though UDP is also possible — however, UDP is not usable in browser applications. A defining characteristic of HTTP is statelessness ([idempotency](https://en.wikipedia.org/wiki/Idempotence)), meaning every request is completely independent of all preceding ones. It is often called the protocol of the World Wide Web — the web is built on it. It operates using two main objects: an HTTP request and the response it receives.

## The **HTTP request** 

An **HTTP request** is composed of three elements:

1. a command,
2. a request header, and
3. a message body — optional, may be empty

![](C:\work\SOFTENG\project\softeng2\10_elm_http_REST\http_request_structure.svg)

### The *Command* part

The **command** contains the type of request, which can be `GET`, `POST`, `HEAD`, `OPTIONS`, `PUT`, `DELETE`, `TRACE`, or `CONNECT`.

| Verb      | Meaning                                                      |
| --------- | ------------------------------------------------------------ |
| `GET`     | Initiates the download of the specified resource. By far the most commonly used method. |
| `HEAD`    | Returns the same as GET, but omits the message body from the response. Useful for checking, for example, whether a resource has changed since it was last downloaded. |
| `POST`    | Sends data to the server for processing — for example, the contents of an HTML form. The data is contained in the message body. |
| `PUT`     | Uploads the specified resource.                              |
| `DELETE`  | Deletes the specified resource.                              |
| `TRACE`   | Returns the received request back to the sender. Useful when the client wants to know whether — and what — intermediate network devices modify the request. |
| `OPTIONS` | Returns a list of HTTP methods supported by the server.      |
| `CONNECT` | Converts the request into a transparent TCP/IP tunnel. Typically used to establish SSL communication. |

### The **HTTP header** section

The **HTTP header** section is responsible for parameterizing the request. Various key-value pairs can be set here to specify exactly what the requesting party expects. Wikipedia has a good overview of [HTTP header fields](https://en.wikipedia.org/wiki/List_of_HTTP_header_fields) as an interesting reference. In the header, the browser communicates its own identifier to the server via the `user-agent string` key. For historical reasons this is notoriously difficult to parse — a humorous account of why can be read [here](https://webaim.org/blog/user-agent-string-history/).

The header is a collection of key-value pairs sent along with the request. Here's a real-world example of what a `GET` request header might look like:

```
GET /questions/22 HTTP/1.1
Host: testurl.com
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64)
Accept: application/json
Accept-Language: en-US,en;q=0.9
Authorization: Bearer eyJhbGciOiJIUzI1NiJ9...
Cache-Control: no-cache
```

Each line is a `Key: Value` pair. A few of the most common ones:

- **`Host`** — the domain being requested (required in HTTP/1.1)
- **`User-Agent`** — identifies the browser/client making the request
- **`Accept`** — tells the server what format the client wants back (`application/json`, `text/html`, etc.)
- **`Authorization`** — carries authentication tokens or credentials
- **`Cache-Control`** — instructs how caching should be handled

The server reads these and adjusts its response accordingly — for example, returning JSON instead of HTML if `Accept: application/json` is set.

### The **message body (request body)**

The **message body (request body)** is an optional section that may contain the data to be sent.

## The **response**

The **response** is structured similarly: it contains an informational block, followed by the response header, and then the message body. The informational block reports on the outcome of the request, while the response header and message body serve the same functions as their request counterparts described above.

An important part of the protocol is the status codes found in the informational block. Every response carries exactly one such code, depending on the outcome of processing the request. These codes are organized into five groups:

- `1xx` — the server has received the request; informational codes
- `2xx` — the server successfully received and processed the request
- `3xx` — the server received the request, but further action is required to fulfill it
- `4xx` — client error; the request is invalid for some reason
- `5xx` — server error; the server was unable to fulfill the request

Each group contains codes predefined by the protocol that should be used, but there is also the option to define new ones. Commonly encountered codes include `200` (successful request), `404` (the requested resource was not found), and `500` (internal server error).

Anyone curious about the full list presented in an adorable, dog-themed format can view it [here](https://httpstatusdogs.com/).

## REST and REST API

**REST (Representational State Transfer)** is a software architecture designed specifically for communication in distributed software systems. The term was introduced by Roy Fielding in his dissertation, written in 2000. In the literature it is almost always used in conjunction with HTTP, which can create the impression that a REST-based application can only function over HTTP — but in fact, any other communication protocol can be used, as long as it is capable of supporting such a structure.

A REST application makes use of the status codes defined in the HTTP protocol to communicate the outcome of a request in the response message. Requests are made using **URIs (Uniform Resource Identifiers)**, and request types are distinguished based on HTTP methods. According to accepted conventions: fetching one or more resources uses `GET`, creating a resource uses `POST`, modifying an existing resource uses `PUT` or `PATCH`, and deleting one uses `DELETE`. The difference between `PUT` and `PATCH` is that a `PUT` call requires passing the entire modified object to the server, whereas `PATCH` only requires sending the new values of the properties that are being changed. Most application development frameworks are built around this logic, and it is the broadly accepted approach — deviating from it is unusual except in special cases.

When designing URIs, it is important that the function of a given path is easy to recognise. The literature discusses many approaches, but the general convention is to follow a `server/resource(s)/identifier` structure.

The term **API (Application Programming Interface)** refers to an application interface through which external parties can communicate with a piece of software and issue instructions without needing to know its internal workings. One must always adapt to the interface's specifications and design any communicating system to comply with its communication rules. As its name suggests, a REST API is an interface built on the REST design pattern described above. Each URI represents a separate **API endpoint**, designed to perform a distinct task. They can generally be grouped around sets of resources. A theoretical example — using a quiz-app scenario — might look like this:

|                                           |                                                              |
| ----------------------------------------- | ------------------------------------------------------------ |
| `GET https://testurl.com/questions`       | list all question objects using the `GET` method             |
| `GET https://testurl.com/questions/22`    | retrieve the question object with the given ID using the `GET` method |
| `POST https://testurl.com/questions`      | create a new question object using the `POST` method         |
| `PATCH https://testurl.com/questions/22`  | modify the question object with the given ID using the `PATCH` method (e.g. changing the correct answer) |
| `DELETE https://testurl.com/questions/22` | delete the question object with the given ID using the `DELETE` method |

In this example, the endpoints are designed around the questions resource and satisfy the **CRUD (Create, Read, Update, Delete)** operational requirements, since all four basic operations can be performed through them. The data transmitted and received in HTTP messages (in this example, question objects) are contained in the message body, and in the case of a REST API they are typically serialized in a widely used, human-readable standard format. Examples of such formats include XML and JSON — you have already encountered JSON.

Anyone who wants to see a quick live example of `GET` requests and parameters while reading jokes can do so [on this page](https://jokeapi.dev/) by scrolling down.

## Monitoring HTTP Traffic

It is worth installing the [RestMan](https://chrome.google.com/webstore/detail/restman/ihgpcfpkpmdcghlnaofdmjkoemnlijdi) extension for Chrome — it makes hunting down bugs much easier!

[Inspecting an HTTP request in Chrome Dev Tools](https://claude.ai/chat/Http1.m4v)

The screenshot below shows the response from the uni-corvinus.hu server to a `GET` request, viewed in RestMan. Below the informational section (STATUS 200, etc.) you can inspect both the response header and the body:

![1618339014570.png](1618339014570.png)

Anyone who wants to explore the world of REST APIs more deeply may find it worth downloading [Postman](https://www.postman.com/).
