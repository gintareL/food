class Foodstuff < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  belongs_to :category

  filterrific(
      default_filter_params: { sorted_by: 'created_at_desc' },
      available_filters: [
          :sorted_by,
          :search_category,
          :search_name
      ]
  )

  scope :search_name, -> (name){
    where(name: name)
  }

  scope :search_category, -> (category){
    where(category_id: Category.find_by(category: category))
  }

  scope :sorted_by, -> (sort_option){
    direction = /desc$/.match?(sort_option) ? "desc" : "asc"
    case sort_option.to_s
    when /^name/
      order("LOWER(foodstuffs.name) #{direction}")
    when /^kcal/
      order("LOWER(foodstuffs.kcal) #{direction}")
    when /^kj/
      order("LOWER(foodstuffs.kj) #{direction}")
    when /^density/
      order("LOWER(foodstuffs.density) #{direction}")
    when /^created_at/
      order("LOWER(foodstuffs.created_at) #{direction}")
    else
      raise(ArgumentError, "Invalid sort option: #{sort_option.inspect}")
    end
  }
end
