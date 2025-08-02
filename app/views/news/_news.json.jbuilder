json.extract! news, :id, :title, :content, :summary, :published_at, :category, :tags, :is_featured, :cover_image, :author_name, :view_count, :created_at, :updated_at
json.url news_url(news, format: :json)
