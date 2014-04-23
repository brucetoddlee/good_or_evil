class Post < ActiveRecord::Base
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  paginates_per 12
  has_many :comments
  has_many :likes, as: :likeable, dependent: :destroy
  #the model shouldn't have that validate length max method, it does
  #weird things if it is in there.

  auto_html_for :link do
    html_escape
    image(:width => 350, :height => 250)
    youtube(:width => 350, :height => 250)
    vimeo(:width => 350, :height => 250)
    soundcloud(:width => 350, :height => 250)
    metacafe(:width => 350, :height => 250)
    dailymotion(:width => 350, :height => 250)
    twitter(:width => 350, :height => 250)
    flickr(:width => 350, :height => 250)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end
