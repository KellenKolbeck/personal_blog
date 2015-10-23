FactoryGirl.define do

  factory(:post) do
    title('Kellen')
    body('This is fun')
  end

  factory(:comment) do
    comment_body('Hello there')
    post
  end

  factory(:tag) do
    name("Funny")
    post
  end
end
