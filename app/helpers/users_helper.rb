module UsersHelper
    def user_has_no_posts?
        @user.posts.empty?
    end
    
    def user_has_no_comments?
        @user.comments.empty?
    end
end
