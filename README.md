# Project: Micro-Reddit

This is a project completed as part of The Odin Project's Ruby on Rails course. The main objective is to build the models for a scaled-down version of Reddit which would demonstrate the following skills/concepts:

- Active Record Basics
- Active Record Associations
- Active Record Migrations
- Active Record Validations

## Assumptions

- Each post can only have one author.
- Advanced features like authentication or comment-replying are not covered.

## Implemented Models

### User

A user can create many posts (One-to-Many) and many comments (One-to-Many).

```
id:integer
created_at:datetime
updated_at:datetime
username: string [unique, 10-30 characters, present]
password: string [unique, present]

has_many posts
has_many comments
```

### Post

A post belongs to a user (One-to-One) and can have many comments (One-to-Many).

```
id:integer
created_at:datetime
updated_at:datetime
title: string [unique, present]
body: text [present]

belongs_to user
has_many comments
```

### Comment

A comment belongs to a user (One-to-One) and a post (One-to-One).

```
id:integer
created_at:datetime
updated_at:datetime
content: text [present]

belongs_to user
belongs_to post
```
