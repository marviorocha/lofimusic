module AlbumHelper
  def year_range
    Time.zone.now.year - 100..Time.zone.now.year 
  end
end
