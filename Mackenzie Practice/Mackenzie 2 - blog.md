# Mackenzie 2 (How to build a blog)

### 1. CRUD 만들기


처음보는것
``new.htrml.erb``
```
        <div class="errors">
            <h2><%= pluralize(@post.errors.count, "error") %> prevented this post from saving:</h2>
			<ul>
				<% @post.errors.full_messages.each do |msg| %>
					<li><%= msg %></li>
				<% end %>
			</ul>
        </div>
```


### 2.Comment기능

comment controller, model만들기

익혀둘것 - delete 링크의 형식
```
<%= link_to 'Delete', [comment.post, comment],
								  method: :delete,
								  class: "button",
								 	data: { confirm: 'Are you sure?' } %></p>
```
> 왜 [] 안에 인자를 두개 받는지는 모르겠움..

모델에 dependent를 해주면 ? 
``Post model``
```
class Post < ActiveRecord::Base
    has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	validates :body,  presence: true
end

```

### 3. Page기능 (페이지 나누기가 아니라 그냥 내소개 페이지였음...)

controller 만들기

페이지에 따라 보이는 글 다르게 해주기
``if current_page? ()``
```
			<% if current_page?(root_path) %>
				<p>All Posts</p>
			<% elsif current_page?(about_path) %>
				<p>About</p>
			<% else %>
				<%= link_to "Back to All Posts", root_path %>
			<% end %>
```

### 4. User기능
rails g device:view 하면 관련 뷰가 다 생김

권한주기
``postcontroller``
```
	before_action :authenticate_user!, except: [:index, :show]
```
``view``
```
	<% if user_signed_in? %>
```


