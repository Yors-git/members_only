module PostsHelper
  def logged(post) 
    if user_signed_in? && current_user.name != post.user.name
      content_tag(:td, post.user.name)
    elsif user_signed_in? && current_user.name == post.user.name
      content_tag(:td, post.user.name) + content_tag(:td, (link_to 'Delete', post, method: :delete)) 
    else
    content_tag(:td, 'Anonymous')
    end
  end
end
