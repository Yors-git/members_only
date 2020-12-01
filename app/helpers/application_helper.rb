module ApplicationHelper
  def check_signed_in
    logout = (link_to "Logout", destroy_user_session_path, method: :delete, class: "nav-link")
    signUp = (link_to 'Sign Up', new_user_registration_path, class: "nav-link")
    signIn = (link_to 'Sign In', new_user_session_path, class: "nav-link")
    if user_signed_in?
      content_tag(:li, content_tag(:a, 'Signed as: ' + current_user.name, href: '#', class: "nav-link"), class: "nav-item") +
      content_tag(:li, (logout), class: "nav-item active")
    else
      content_tag(:li, (signIn), class: "nav-item") + 
      content_tag(:span, '  /  ', class: "navbar-text white-text") +
      content_tag(:li, (signUp), class: "nav-item")
    end
  end
end
