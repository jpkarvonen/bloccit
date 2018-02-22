require 'random_data'

50.times do
    Post.create!(
        title: RandomData.random_sentence,
        body:  RandomData.random_paragraph
    )
end

unique = Post.find_or_create_by!(title: "Hello", body: "I'm new here.")

posts = Post.all

100.times do 
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

Comment.find_or_create_by!(post: unique, body: "Welcome!")

puts "Seeds finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
    