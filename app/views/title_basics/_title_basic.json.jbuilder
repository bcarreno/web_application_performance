json.extract! title_basic, :id, :tconst, :title_type, :primary_title, :original_title, :is_adult, :start_year, :end_year, :runtime_minutes, :genres, :created_at, :updated_at
json.url title_basic_url(title_basic, format: :json)
