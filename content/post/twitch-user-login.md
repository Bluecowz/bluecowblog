+++
title = "Twitch User Authentication"
date = "2021-11-30"
author = "Mike"
cover = "hello.jpg"
description = "Using React to let users login with Twitch."
draft=true
+++

# User Login via Twitch using React

I was recently working on a project where I wanted to let users login via [Twitch](https://twitch.tv). Originally, I was building the project in Django but found the framework too monolithic and it annoyed me. So I decided to move the project to React. After moving the project I spent at least two hours trying to rebuild the login process. I had done it once before and I screwed it up the second time. I'm going to write it down here so I won't forget again.


### Register Your Application With Twitch

In order to login with Twitch we need to register our application and get a client ID and client secret. Head over to the [developer console](https://dev.twitch.tv/console) and navigate to the Applications section. Click the *Register Your Application* button. 


#### Name
~~For this example I'm going to name my application *Example*.~~ I could not call my project Example because apparently these names are not just a random name for your project. Damn. Guess its *ExampleLoginProject*.


#### OAuth Redirect URLs
For developement, I'm going to make my OAuth Redirect URL: **http://localhost:3000/twitchauth/**. This link is important, later when we come to Twitch asking to log a user in for us, Twitch will need to know where to send them back to with our authentication code. 

#### Catagory
I'm going to select my catagory as *other* because I'm not actually doing anything with this application but you should select the catagory that best works for you.


#### Not A Robot
Once you are determined to not be a 011100100110111101100010011011110111010000001010 hit the create button and now you have a project. Hit 'manage' to go into your project. 

This is where you will find the **Client ID** and **Client Secret**. You will need to generate a new secret. Be sure to put it somewhere because you cannot be shown the secret again. Instead, it generates a new one and the existing secret is obsolete. This can be a pain when working across multiple computers.

**Please do not commit your client secret to Github or whatever. Bad idea. Big no no. I don't even commit my Client ID.**



For this example I'm going to assume you already created a React app. We are going to use [Axios](https://axios-http.com/) to make API calls. You could do this with basic typescript or fetch also.

```
npm install axios
```

