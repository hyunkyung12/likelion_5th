{"filter":false,"title":"admin.py","tooltip":"/blog/admin.py","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":3,"column":0},"action":"remove","lines":["from django.contrib import admin","","# Register your models here.",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":3,"column":25},"action":"insert","lines":["from django.contrib import admin","from .models import Post","","admin.site.register(Post)"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":25},"end":{"row":3,"column":25},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1494467403481,"hash":"89ae290a53b6faffb4db56285e7e91eb93a20214"}