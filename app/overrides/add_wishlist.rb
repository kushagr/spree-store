Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "wishlist", 
                     :insert_before => "#cart-form",
                     :text => ' <% if spree_current_user %>
                                  <div id="wishlist">
                                    <%= form_for @wishlist, :url => { :controller => "wishlists",:action => "update" } do |f| %>
                                      <%= f.hidden_field :product_id, :value => @product.id %>
                                      <button type="submit" class="large primary">
                                        <%= Spree.t(:add_to_wishlist) %>
                                      </button>
                                    <% end %>
                                  </div>
                                <% end %>'
                    )