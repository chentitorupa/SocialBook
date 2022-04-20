module ApplicationHelper

    def flash_class(type)
        case type
        when 'alert'
            then "alert-danger"
        when 'notice'
            then "alert-success"
        else
            ""
        end
    end

end
