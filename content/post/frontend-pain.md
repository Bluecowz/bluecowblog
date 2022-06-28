+++
title = "Do You Really Need A Frontend Framework?"
date = "2022-06-27"
author = "Mike"
cover = "hello.jpg"
description = "Do you really need a frontend framework?"
draft=false
+++

# Do I Really Need A Frontend Framework?

Recently, I launched a project called [BootJobs](https://www.bootjobs.dev). 
The concept of the website was simple, a job board for people who want to get a job after graduating from a coding bootcamp.
However, I built the website for a very selfish reason.
**I was frustrated with React and dealing with all its complexities.**
Before building and launching BootJobs in under two months, I spent almost 8 months developing another project without completing it. 
I would argue 90% of that developing time was dealing with React and other frontend headaches (React Query, Redux, Axios, Bootstrap, etc). 
After struggling with a series of issues, mainly stemming from server state vs client state, I wanted a break.
I needed a simple idea, i.e. a job board, and BootJobs was born. 

## Simple Project and Good Leaning

The project is written in Go, with Gin as the web server and tailwindcss because I wanted it to look good. 
I use templates so the entire website is rendered on the server (something I'm not sure I could do with react and Gin). 
I've been spoiled by frontend frameworks my whole career and this project pointed out that I miss understood some web basics. 
For starters, I didn't realize how little I understood basic forms.
Instead of dealing with project state or error messages, I can just direct the client to whatever url they need.
After building and launching a project so fast compared to past projects I'm wonder, do I **need** a front end framework?

## Maybe I Don't

As a software engineer, I love to over engineer things. 
I think many of my brethren share this passion. 
Why implement a solution that might not be optimal in 2 hours when I can spend two days on something dynamic, modular, and elegant?
I don't have to.
It doesn't help that the Javascript world gets a new shiny toy almost [daily](https://dayssincelastjavascriptframework.com/).
I often hear my colleagues say we should use this new framework or this new library (I am guilty as anyone of this).
Rarely, do I ask myself if I **need** this new framework. 
Does this project really need to be React with Redux state management, react query for api calls, or any of the other 1300+ packages React comes with by default?

Probably not.

After BootJobs I've been considering removing React all together.
How much can I do without JSX spoiling me?
The biggest features of my other project are all on the server side. 
I love Typescript but without the context of React or JSX I don't really need it.



I will probably live longer if I stop dealing with `useEffect` so much.