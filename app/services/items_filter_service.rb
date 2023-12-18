class ItemsFilterService
  def initialize(items_or_relation, params)
    @items_or_relation = items_or_relation
    @params = params
  end

  def filter_and_sort
    items = if @items_or_relation.is_a?(ActiveRecord::Relation)
              @items_or_relation
            else
              @items_or_relation.items.includes(:artist, :manufacturer, :comments, :references, :tasks)
            end

    if @params[:sort_order] == 'made_at_first'
      items = items.joins(:artist).order('items.made_at ASC NULLS LAST, artists.last_name ASC')
    else
      items = items.joins(:artist).order('artists.last_name ASC, items.made_at ASC NULLS LAST')
    end

    items = items.where(artist_id: @params[:artist_id]) if @params[:artist_id].present?
    items = items.open_tasks(@params[:open_tasks]) if @params[:open_tasks] == "false"

    # Deactivated function
    # items = items.incomplete_data(@params[:incomplete]) if @params[:incomplete] == 'true'

    items = items.global_search(@params[:query]) if @params[:query].present?

    return items
  end
end
