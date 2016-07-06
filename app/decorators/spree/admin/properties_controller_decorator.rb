 Spree::Admin::PropertiesController.class_eval do
 include TheSortableTreeController::Rebuild
  
   def index
    if params[:q].present?
      @properties = Spree::Property.where("name LIKE ?","%#{params[:q][:name_cont]}%").nested_set.select('id, name,  parent_id').limit(15)
    else
      @properties = Spree::Property.nested_set.select('id, name,  parent_id').limit(15)
    end
  end
  
  def new
    
  end
  
  def create
   
    @property = Spree::Property.new(property_params)
    if @property.save
      flash[:message] = "Property Successfully Saved"
      redirect_to admin_properties_url
    else
      render :action => "new"
    end
  end
  
  def show
  
  end
  def manage
    @properties = Spree::Property.nested_set.select('id, name,  parent_id').limit(15)
  end

  def nested_options
    @properties = Spree::Property.nested_set.select('id, name,  parent_id').limit(15)
  end

  def node_manage
    @root  = Spree::Property.root
    @properties = @root.self_and_descendants.nested_set.select('id, name,  parent_id').limit(15)
    render template: 'spree/properties/manage'
  end

  protected 

  def sortable_model
    Spree::Property
  end

  def sortable_collection
    'properties'
  end

  private
   
    def property_params
      params.require(:property).permit(:name,:presentation,:positition,:lft,:depth,:rgt,:parent_id)
    end
  
  
 end