module PostsHelper
  def post_author(post)
    "Posted by: #{post.user.username}" if user_signed_in?
  end

  def disp_form_errors
    @post.errors.each(&:full_message) if @post.errors.any?
  end

  def create_posts
    render 'form', post: @post if user_signed_in?
  end
end
