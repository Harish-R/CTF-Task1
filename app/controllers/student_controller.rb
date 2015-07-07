class StudentController < ApplicationController
  def index
  end

  def show
  	@sub1 = calculate_grade(params[:sub1][0].to_i)

	@sub2 = calculate_grade(params[:sub2][0].to_i)
  	
	@sub3 = calculate_grade(params[:sub3][0].to_i)

  end
end

private
def calculate_grade (mark)
	if mark >= 90
  		grade = "S"
  	elsif mark >= 80
  		grade = "A"
  	elsif mark >= 70
  		grade = "B"
  	elsif mark >= 60
  		grade = "C"
	elsif mark >= 55	
		grade = "D"
  	elsif mark >= 50	
		grade = "D"
	else
		grade = "U"
	end

	return grade
end

=begin
<%= form_for(:student, :url => {controller => 'student', :action => 'show'}) do |f| %>
	<p> <%= f.text_field :name, placeholder: 'Name' %> </p>
	<p> <%= f.text_field :roll_no, placeholder: 'Roll No' %> </p>
	<p> <%= f.text_field :dept, placeholder: 'Department' %> </p>
	<p> <%= f.text_field :sub1, placeholder: 'Subject 1 Marks' %> </p>
	<p> <%= f.text_field :sub2, placeholder: 'Subject 2 Marks' %> </p>
	<p> <%= f.text_field :sub3, placeholder: 'Subject 3 Marks' %> </p>
	<p> <%= f.submit :Show %> </p>
<% end %>
=end
