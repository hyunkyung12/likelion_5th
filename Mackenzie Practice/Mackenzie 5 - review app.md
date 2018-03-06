# Mackenzie 5 (movie review app)

### 1. movie, user 만들기

- movie CRUD 만들기
rails g scaffold movie title description:text movie_length director rating

- devise젬을 이용해 user모델 만들기
- user모델과 movie모델간 관계 설정해주기
rails g migration add_user_id_to_movies user_id:integer
    
- movie 생성시 user_id가 nill로 나옴
 > controller에 가서 @movie=Movie.new 대신에 
 > @movie = current_user.movies.build 로 바꿔줌

- paperclilp 사용
 > <%= form_for(@movie), html: { multipart: true } do |f| %>
 에서 multipart가 의미하는것??

- view 수정
<%= image_tag @movie.image.url{:medium} %> 으로 이미지 보여주기

### 2. review 만들기

- review CRUD 만들기
- rating이라는 애는 어떻게 저렇게 만들어졌지?
> form에서 number_field를 사용했네..! 싱기방기

- ``user.rb``에
```
  has_many :reviews, dependent: :destroy
```
해당 글을 쓴 user만 글을 삭제할 수 있도록 dependent 설정

- `review.controller`의 create에
```
@reivew.user_id = current_user.id
```
user_id 설정해주기


### 3. movie에 review 연결시켜주기

- form 수정
```
<%= form_for([@movie, @review]) do |f| %>
```

- route 수정
```
  resources :movies do
    resources :reviews, except: [:show, :index]
  end
```
이렇게 해주면 movie안에 review가 포함된 route가 설정됨

- controller 수정

### 4. raty jquery 사용
보기만할래...신기해....

### 5. 검색기능
- searchkick젬 설치
깃헙에 나와있는 방법으로 설치를 할 수 없어 다른 방법을 찾아보았다.
sudo-apt get elasticsearch 를 해면 된다고 하는데 자꾸 오류가 나서 일단 접었따...