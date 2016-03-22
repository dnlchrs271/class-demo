class Post < ActiveRecord::Base
    #user is a model that exists in the system currently
    #belongs to is a function
    attr_accessor :tag_titles
    belongs_to :user
    has_many :categorizations
    has_many :tags, through: :categorizations
    
    validates :user, presence: true
    validates :title, presence: true
    validates :body, presence: true
end
