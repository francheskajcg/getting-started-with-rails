module ArticlesHelper
  def icon_for_status(status)
    icon_class = case status
    when 'público' then 'fa-unlock text-success'
    when 'privado' then 'fa-lock text-danger'
    when 'archivado' then 'fa-box-archive text-secondary'
    else 'fa-question text-muted'
    end

    "<i class=\"fa-solid #{icon_class} me-2\"></i>".html_safe
  end
end

