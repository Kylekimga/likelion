class HomesController < ApplicationController #controller는 먼저 만들어야 하고, 명령어는 rails generate controller "names", views도 바로 생성됨 자동으로
    def index  #이름은 조종하고 싶은 views에 있는 html파일명과 같아야 함
        entry = (1..45).to_a
        sampled = entry.sample(7)
        @sorted = sampled.sort()
    end
    def second
        @name = params[:name]
        @pwd = params[:pwd]
    end

    def third 
        @num = params[:num].to_i

        if @num%2 == 0 
            @result ="짝수입니다."
        else
            @result = "홀수입니다."
        end
        
        one_line = Post.new   #"모델명"의 첫번째 문자는 대문자로 써야함
        one_line.age = @num
        one_line.save
        
        redirect_to request.referer
    end
    
    def forth
        @entry = Post.all
    end
    
    def delete
        that_line = Post.find(params[:id])
        that_line.destroy
        
        redirect_to request.referer
        
        
    end
    
    def delete_all
        posts = Post.all
        posts.each do |p|
            p.destroy
        end
        redirect_to "/"
    end
    
    def edit
        @that_line = Post.find(params[:id])  #id를 넘기는 새로운 방식: url에 표시하기!! href에서 url에 표시되도록 하는 것임
    end
    
    def update
        that_line = Post.find(params[:id])
        that_line.age = params[:num]
        that_line.save
        
        redirect_to "/"
    end
    
end
