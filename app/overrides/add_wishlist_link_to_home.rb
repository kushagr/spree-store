Deface::Override.new(:virtual_path => "spree/shared/_nav_bar", 
                     :name => "wishlist_link", 
                     :insert_top => "ul#nav-bar",
                     :text => '
                     <% if spree_current_user %>
                      <li><%= link_to "Wishlist", spree.wishlist_path(spree_current_user.wishlist.id) %></li>
                     <% end %> 
                     '
                    )