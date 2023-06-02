class ApplicationQuery
  attr_reader :relation

  module Scopes
    def sort_by_column(param_sort = '', permitted_values = [], default_order = 'created_at desc')
      if param_sort.blank?
        return order("#{table_name}.#{default_order}", :id)
      end

      split_sort = param_sort.split(",")
      filter_permitted = split_sort.select { |item| permitted_values.include? item.split(":")[0] }
      sorted_filter = filter_permitted.map do |filter|
        data = filter.split(':')
        "#{table_name}.#{data[0]} #{data[1]}"
      end.join(',')

      order(sorted_filter, :id)
    end

    def in_range_date(from, to, column = nil)
      column = column.presence || "created_at"

      start_date = from.to_date.beginning_of_day
      end_date = to.to_date.end_of_day
      where(column => start_date..end_date)
    end
  end
end
