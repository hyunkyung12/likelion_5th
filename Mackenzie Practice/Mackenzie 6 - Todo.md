# Mackenzie 6 (Todo App)

### 1. todo_list와 todo_item 만들기
- rails g scaffold todo_list
- rails g model todo_item todo_list:references
- model간 관계 설정
- todo_item은 todo_list에 속한 상태
``todo_item.controller``에서 ``create``할 때
```r
        @todo_list = TodoList.find(params[:todo_list_id])
        @todo_item = @todo_list.todo_items.create(params[:todo_item].permit(:content))
```
이렇게 해주면 item을 create할때 todo_list를 외부키로 받아올수있음

- 처음본거
``flash``는 뭐하는거지?
```r
    def destroy
        @todo_item = @todo_list.todo_items.find(params[:id])
        if @todo_item.destroy
            flash[:success] = "Todo List Item was deleted"
        else
            flash[:error] = "Todo List Item could not be deleted"
        end
        
        redirect_to @todo_list
    end
```

### 2. migration 하기
- rails g migration add_complete_at_to_todo_items completed_at:datetime
``completed``를 바로 생성해서 migration파일을 생성?

- ``routes.rb``에도 이상한걸 해줌
``patch``가 뭔데?
```r
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
```

### 3. todo_list와 todo_item 수정하기
- ``flash``와 ``confirm``과 ``notice``의 차이?
- model에 method를 만들어주는 경우?
```r
<% if todo_item.completed? %>
```
그냥 반복을 줄이려고...

이번 강의는 그냥 css를 활용하는 것이 많아서 필기가 많이 없다...