{"filter":false,"title":"user.rb","tooltip":"/app/models/user.rb","undoManager":{"mark":15,"position":15,"stack":[[{"start":{"row":0,"column":0},"end":{"row":6,"column":0},"action":"remove","lines":["class User < ActiveRecord::Base","  # Include default devise modules. Others available are:","  # :confirmable, :lockable, :timeoutable and :omniauthable","  devise :database_authenticatable, :registerable,","         :recoverable, :rememberable, :trackable, :validatable","end",""],"id":19},{"start":{"row":0,"column":0},"end":{"row":6,"column":3},"action":"insert","lines":["class User < ApplicationRecord","  has_many :posts, dependent: :destroy","  # Include default devise modules. Others available are:","  # :confirmable, :lockable, :timeoutable and :omniauthable","  devise :database_authenticatable, :registerable,","         :recoverable, :rememberable, :trackable, :validatable","end"]}],[{"start":{"row":1,"column":17},"end":{"row":1,"column":38},"action":"remove","lines":[", dependent: :destroy"],"id":20}],[{"start":{"row":0,"column":30},"end":{"row":0,"column":31},"action":"insert","lines":[":"],"id":21}],[{"start":{"row":0,"column":31},"end":{"row":0,"column":32},"action":"insert","lines":[":"],"id":22}],[{"start":{"row":0,"column":32},"end":{"row":0,"column":33},"action":"insert","lines":["B"],"id":23}],[{"start":{"row":0,"column":33},"end":{"row":0,"column":34},"action":"insert","lines":["a"],"id":24}],[{"start":{"row":0,"column":34},"end":{"row":0,"column":35},"action":"insert","lines":["s"],"id":25}],[{"start":{"row":0,"column":35},"end":{"row":0,"column":36},"action":"insert","lines":["e"],"id":26}],[{"start":{"row":0,"column":13},"end":{"row":0,"column":24},"action":"remove","lines":["Application"],"id":27},{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"insert","lines":["S"]}],[{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"remove","lines":["S"],"id":28}],[{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"insert","lines":["A"],"id":29}],[{"start":{"row":0,"column":14},"end":{"row":0,"column":15},"action":"insert","lines":["c"],"id":30}],[{"start":{"row":0,"column":15},"end":{"row":0,"column":16},"action":"insert","lines":["t"],"id":31}],[{"start":{"row":0,"column":16},"end":{"row":0,"column":17},"action":"insert","lines":["i"],"id":32}],[{"start":{"row":0,"column":17},"end":{"row":0,"column":18},"action":"insert","lines":["v"],"id":33}],[{"start":{"row":0,"column":18},"end":{"row":0,"column":19},"action":"insert","lines":["e"],"id":34}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":6,"column":3},"end":{"row":6,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1494240122000,"hash":"58f5834f534f795d155e74cdcb437bfb5711df85"}