class Author 
  
  attr_accessor :name
  
  def initialize(name) 
    @name = name
    @posts = []
  end 
  
  
  def add_post(post_name)
    @posts << post
    post_name.author = self
  end
  
  
  def add_post_by_title(post_title)
    post_inst = Post.new(post_title)
    add_post(post_inst)
    
  end 
  
  def posts 
    Post.all.select { |post| post.author == self }
  end 
  
  def self.post_count
    Post.all.count
  end
  
end 