# Mackenzie 7 (Category)

### 1. job CRUD 만들기
- job controller, model 만들기
rails g model job title description:text company url
rails g controller jobs

- CRUD 만들기

### 2.gem 설치하기
- bundle installUsing rake 12.0.0 (왜?)
- gem install simple_form
- gem install haml
- gem install bootstrap-sass
- rails g simple_form:install --bootstrap (왜?)


### 3. category model 만들기

- category 모델 만들기
rails g model category name

- migration  하기
** category와 job은 N:N 관계이기 때문에 따로 테이블을 만들어줌**
rails g migration add_category_id_to_jobs category_id:integer

- 서버를 켜서 카테고리를 만들어줌
 rails c
 Category.connection
 Category
 Category.create(name: " ")
 
### 4. CSS
생략..