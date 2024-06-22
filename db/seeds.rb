# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data
# Clear existing data
User.destroy_all
Post.destroy_all
Comment.destroy_all

# Path to default image and video
default_image_path = Rails.root.join('app/assets/images/default_image.png')
default_video_path = Rails.root.join('app/assets/videos/default_video.mp4')

# Create 20 users
20.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: 'password',
    password_confirmation: 'password'
  )
end

# Create 5 posts for each user
User.all.each do |user|
  5.times do
    post = user.posts.create!(
      title: Faker::Book.title,
      content: Faker::Lorem.paragraph(sentence_count: 10),
      status: ['draft', 'published'].sample,
      creation_date: Faker::Date.backward(days: 30),
      published_date: Faker::Date.backward(days: 10)
    )

    # Attach default image and video to the post
    post.image.attach(io: File.open(default_image_path), filename: 'default_image.png', content_type: 'image/png')
    post.video.attach(io: File.open(default_video_path), filename: 'default_video.mp4', content_type: 'video/mp4')

    # Add 3 comments to each post
    3.times do
      post.comments.create!(
        user: User.all.sample,
        content: Faker::Lorem.sentence(word_count: 10)
      )
    end
  end
end



puts "Seeded #{User.count} users, #{Post.count} posts, and #{Comment.count} comments."
