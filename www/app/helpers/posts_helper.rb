module PostsHelper
  def link_user_search(post)
    link_to post.user.name, posts_path(:q => {:user_name_cont => post.user.name}) if post.user
  end

  def link_to_edit(post, klass = "btn")
    link_to t('.edit', :default => t("helpers.links.edit")),
            edit_post_path(post), :class => klass
  end

  def link_to_destroy(post, klass = "btn btn-danger")
    link_to t('.destroy', :default => t("helpers.links.destroy")),
            post_path(post),
            :method => :delete,
            :data   => {:confirm => t('.confirm', :default => t("helpers.links.confirm", :default => 'Are you sure?'))},
            :class  => klass
  end

end
