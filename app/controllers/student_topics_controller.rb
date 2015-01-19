class StudentTopicsController < ApplicationController
  respond_to :html, :json
  before_filter :signed_in_user
  # GET /student_topics
  # GET /student_topics.json
  def index
    @student_topics = StudentTopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_topics }
    end
  end

  # GET /student_topics/1
  # GET /student_topics/1.json
  def show
    @student_topic = StudentTopic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_topic }
    end
  end

  # GET /student_topics/new
  # GET /student_topics/new.json
  def new
    @student_topic = StudentTopic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_topic }
    end
  end

  # GET /student_topics/1/edit
  def edit
    @student_topic = StudentTopic.find(params[:id])
  end

  # POST /student_topics
  # POST /student_topics.json
  def create
    @student_topic = StudentTopic.new(params[:student_topic])

    respond_to do |format|
      if @student_topic.save
        format.html { redirect_to @student_topic, notice: 'Student-Thema-Relation wurde erfolgreich angelegt!' }
        format.json { render json: @student_topic, status: :created, location: @student_topic }
      else
        format.html { render action: "new" }
        format.json { render json: @student_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_topics/1
  # PUT /student_topics/1.json
  def update
    @student_topic = StudentTopic.find(params[:id])

    respond_to do |format|
      if @student_topic.update_attributes(params[:student_topic])
        format.html { redirect_to @student_topic, notice: 'Student-Thema-Relation wurde erfolgreich aktualisiert.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_topics/1
  # DELETE /student_topics/1.json
  def destroy
    @student_topic = StudentTopic.find(params[:id])
    @student_topic.destroy

    respond_to do |format|
      format.html { redirect_to student_topics_url }
      format.json { head :no_content }
    end
  end


end

private

def signed_in_user
  unless signed_in?
    store_location
    redirect_to signin_path, notice: "Bitte melden Sie sich an."
  end
end