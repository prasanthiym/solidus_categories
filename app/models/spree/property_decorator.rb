Spree::Property.class_eval do

    acts_as_nested_set
    include TheSortableTree::Scopes
    
   
end