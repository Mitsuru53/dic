module BlogsHelper
  def choose_new__or_edit
    if action_name == 'mew' || action_name == 'confirm'
      confirm_blogs_path
    elsif action_name == 'edit'
      blog_path
    end
  end
end
