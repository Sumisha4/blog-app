# BlogApp

A full-stack blog platform built with Ruby on Rails.

## Features

- User authentication (sign up, log in, sign out) with Devise
- Create, edit, delete and publish/unpublish blog posts
- Cover image uploads with ActiveStorage
- Nested comments with ownership-based delete
- Role-based authorization with Pundit
- Background email notifications with ActiveJob and ActionMailer
- Fragment caching for performance
- REST API at `/api/v1/posts`

## Tech Stack

- **Framework:** Ruby on Rails 8.1
- **Database:** PostgreSQL
- **Authentication:** Devise
- **Authorization:** Pundit
- **Styling:** Tailwind CSS
- **File Uploads:** ActiveStorage
- **Background Jobs:** ActiveJob
- **Deployment:** Render

## Getting Started

```bash
git clone https://github.com/Sumisha4/blog-app.git
cd blog-app
bundle install
rails db:create db:migrate
bin/dev
```

Visit `http://localhost:3000`

## Live Demo

[https://blog-app-qza4.onrender.com]

## API

Get all published posts: