require 'uri'

class Link < ActiveRecord::Base

  include PgSearch
  pg_search_scope :search_code, against: [:code]

  before_validation :assign_code

  validates_format_of :url, with: URI.regexp

  private

  def assign_code
    return if code.present?
    begin
      self.code = rand_string
    end while Link.where(code: code).exists?
  end

  def rand_string
    _temp = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
    string = (0...6).map { _temp.sample }.join
  end

end
