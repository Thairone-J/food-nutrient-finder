module ApplicationHelper
    def bootstrap_class_for(flash_type)
        case flash_type
        when "alert"
          "danger"   # Green
        when "notice"
          "success"      # Blue
        else
          flash_type.to_s
        end
      end
end
