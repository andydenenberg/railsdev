class PostsController < ApplicationController
  before_filter :authenticate_user!

  def add_attachment
    @post = Post.find(params[:post])
    @post.attachments.new
    render :partial => 'add_attachment', :layout => false    
  end

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @posts = Post.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def show
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @post = Post.find(params[:id])
      @user = User.new
      @user.name = ''

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  def new
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @post = Post.new
    @post.attachments.build
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  def edit
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @post = Post.find(params[:id])
  end

  def create
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
