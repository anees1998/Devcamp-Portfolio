json.extract! blog, :id, :Title, :Body, :created_at, :updated_at
json.url blog_url(blog, format: :json)
