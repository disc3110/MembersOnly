module PostsHelper
  def post_author(post)
    "Posted by: #{post.user.username}" if user_signed_in?
  end
  def disp_form_errors
    if @post.errors.any?
      @post.errors.each do |error|
        error.full_message
      end
    end
  end
  def create_posts
    render 'form', post: @post if user_signed_in?
  end

end
