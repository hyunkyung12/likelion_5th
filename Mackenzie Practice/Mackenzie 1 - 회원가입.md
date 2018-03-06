# Mackenzie 1

####1. link controller, model 한번에 만들기

```rb
rails g scaffold link title:stirng url:string
```
> 아무것도 안했는데 crud가 만들어짐!

####2. 회원가입 기능 만들기
- devise gem 사용

```rb
gem 'devise'
$ rails generate devise:install
```

```rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```

```rb
  <% flash.each do |name, msg| %>
  <%= content_tag(:div, msg, class: "alret alert-#{name}") %>
  <% end %>
```

- user model 만들기

```rb
rails g devise User
```
>가입하고 rails c, User.count 하면 몇명가입했는지 알수있음

> @user = User.first 하면 처음 가입자가 누구인지 알수있음

- 가입한사람과 안한사람의 링크를 다르게 보여줌

```
 <% if user_signed_in? %>
    <ul>
      <li><%= link_to "Submit link", new_link_path %></li>
      <li><%= link_to "Account", edit_user_registration_path %></li>
      <li><%= link_to "Sign out", destroy_user_session_path, :method => :delete %></li>
    </ul>
  <% else %>
    <ul>
      <li><%= link_to "Sign up", new_user_registration_path %></li>
      <li><%= link_to "Sign in", new_user_session_path %></li>
    </ul>
  <% end %>
```


#### 3. 모델간 관계 설정해주기
- 모델간 관계 알려주기
 > User 에는 has_many :links
 > Link 에는 belongs_to :user

- migration 해주기
```rb
rails g migration add_user_id_to_links user_id:integer:index
```

- controller 수정
```
  def new
    @link = current_user.links.build
  end
```
```
  def create
    @link = current_user.links.build(link_params)
```

#### 4. 회원만 접근가능하게
```
 before_action :authenticate_user!, except: [:index, :show]
```

#### 5. 부트스트랩 적용하기
- bootstrap gem 설치
> https://github.com/twbs/bootstrap-rubygem

