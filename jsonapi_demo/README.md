# README


<p>
  <strong>Title:</strong>
  <%= @article.title %>
</p>

<p>
  <strong>Description:</strong>
  <%= @article.description %>
</p>
<p>
  <strong>Categories:</strong>
 <% if @article.categories.any? %>
    <%= render @article.categories %>
 <% end %>
</p>
<p>
  <strong>Article By:</strong>
  <%= @article.user.username %>
</p>

 <% if logged_in? && (@article.user == current_user || current_user.admin?)%>
<%= link_to 'Edit', edit_article_path(@article) %> |
<% end%>
<%= link_to 'Back', articles_path %>
<br/>



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
