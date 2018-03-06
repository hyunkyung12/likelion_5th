# Mackenzie 3 (recipe box)


### 1. haml젬 사용
html.erb 대신에 html.haml을 사용함, 좀더 편리하게 작성이 가능하다고 함 (나는 불편함)

### 2. recipe 기능
- model, controller 만들기
- simple form 젬을 사용
> 둘의 차이를 보면
	- form
	```
    = semantic_form_for @project do |f|
  = f.inputs do
    = f.input :name
    = f.input :description
    %h3 Tasks
      = f.semantic_fields_for :tasks do |task|
        = render 'task_fields', f: task
      .links
        = link_to_add_association 'add task', f, :tasks
    = f.actions do
      = f.action :submit
    ```
    - simple form
    ```
    = simple_form_for @project do |f|
  = f.input :name
  = f.input :description
  %h3 Tasks
  #tasks
    = f.simple_fields_for :tasks do |task|
      = render 'task_fields', f: task
    .links
      = link_to_add_association 'add task', f, :tasks
  = f.submit
    ```

처음보는것
- ``_form.html.erb`` 의 prevented this recipe froms saving
```
			%p
				= @recipe.errors.count
				Prevented this recipe froms saving
			%ul
				- @recipe.errors.full_messages.each do |msg|
					%li= msg
```

- ``_form.html.erb``의 :input_html
> pass any html attribute straight to the input, by using the :input_html

    ```
        .panel-body
            = f.input :title, input_html: { class: 'form-control' }
            = f.input :description, input_html: { class: 'form-control' }
            = f.input :image, input_html: { class: 'form-control' }
    ```
- 한줄에 사진 세개씩 넣고싶어
``@recipe.eacn_slice(3) do |recipe|``


### 3. bootstrap-sass젬 사용

나는 왜 부트스트랩 적용이 되지 않을까...
application.css의 확장자를 css.scss로 바꾸니까 되었다 싱기방기

### 4. 이미지 넣기 기능
- paperclip 젬 사용 : 이미지 넣는 기능
recipe model에 해준것, 크기뒤에 #을 붙이면 알아저 잘라준다고 함
```
     has_attached_file :image, styles: { medium: "400x400#" }
```

- rails g papaerclip recipe image
- controller에서 image도 찾을수 있도록 params 수정
- form에서 image도 제출할수 있도록 수정

### 5. 재료와 요리방법 기능

- cocoon젬 사용 : 중첩된 양식 편리하게 사용
``recipe.controller``에서 이러한 attribute들을 추가 (왜?)
```
params.require(:recipe).permit(:title, :description, :image, ingredients_attributes: [:id, :name, :_destroy], directions_attributes: [:id, :step, :_destroy])
```

- model 두개 생성
> model생성시 recipe:belongs_to 하면 recipe에 대한 foriegnkey

- form을 수정하되 _ingredient와 _direction으로 나누어 정리

### 6. User기능
- devise젬 사용
- controller를 수정해줌
```
	def new
    	@recipe = Recipe.new
    end
```
대신에
    ```
    def new
        @recipe = current_user.recipes.build
    end
    ```

- user를 recipe가 인식을 못함
```
Submitted by
= @recipe.user.email
```
을 하면 user.email이 없다고 나옴
> - rails c
> - @user = User.first (or 연결하고싶은 user)
> - @recipe = Recipe.find(해당 recipe 번호)
> - @recipe.user = @user
> - @recipe.save
> 이렇게 해줘야 recipe에 user가 연결됨...

이렇게 말고 자동적으로 연결할수 있는 방법은 없나??






