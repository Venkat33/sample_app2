class ArticlesController < ApplicationController
def index
@article =Article.all
end
def new
@article = Article.new
end
def edit
  @article = Article.find(params[:id])
end

def create
#render plain: params[:article].inspect
@article = Article.new(article_params)
if @article.save
  flash[:notice]  ="Article was successfully created"
  redirect_to article_path(@article)
  #do something
else
  render "new"

  #@article.save
  #redirect_to articles_path(@article)
end

end
def update
  @article =Article.find(params[:id])
  if @article.update(article_params)
    flash[:notic]="Article was successfully updated"
    redirect_to article_path(@article)
  else
    render "edit"
end
end
def show
  @article= Article.find(params[:id])

end

private
def article_params
  params.require(:article).permit(:tittle, :description)
end
end