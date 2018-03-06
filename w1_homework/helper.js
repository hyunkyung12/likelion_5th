//HTML태그를 미리 만들어서 변수에 담았다.
//필요에 따라 수정해도 좋다.

var HTMLName = '<div>%data%</div>',
    HTMLAge = '<div>%data%</div>',
    HTMLEducation = '<div>%data%</div>',
    HTMLMajor = '<div>%data%</div>',
    HTMLLike = '<div>%data%</div>'
    HTMLSlogan = '<div>%data%</div>';


//자기소개에 필요한 정보를 담았다.
//필요에 따라 추가해도 좋다.

var model = {
  name: "이름 : 이현경",
  age: "나이 : 22",
  education: "학교 : 건국대학교",
  major: "학과 : 응용통계학과",
  like: "취미 : 잠자기",
  slogan: "각오 : 이번학기 힘들더라도 열심히해서 많이 배워가자!",

  display: function (){
    
    //HTML태그의 %data%를 모델의 값으로 대체하기
    var NewName = HTMLName.replace("%data%", model.name);
    var NewAge = HTMLAge.replace("%data%", model.age);
    var NewEducation = HTMLEducation.replace("%data%", model.education);
    var NewMajor = HTMLMajor.replace("%data%", model.major);
    var NewLike = HTMLLike.replace("%data%", model.like);
    var NewSlogan = HTMLSlogan.replace("%data%", model.slogan);


    // 원하는 위치에 추가하기
    // jquery selector를 이용해서, 동적으로 원하는 위치에 미리 만들어둔 HTML 태그를 추가한다.
    $('.modal-body').append(NewName);
    $('.modal-body').append(NewAge);
    $('.modal-body').append(NewEducation);
    $('.modal-body').append(NewMajor);
    $('.modal-body').append(NewLike);
    $('.modal-body').append(NewSlogan);
  }
}

//수정불가
//컨트롤러를 통해서 model.display를 실행합니다.
function contoller(){
  model.display();
}

contoller();
