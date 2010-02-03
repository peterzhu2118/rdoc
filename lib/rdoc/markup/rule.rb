##
# A horizontal rule with a weight

class RDoc::Markup::Rule < Struct.new :weight

  def accept visitor
    visitor.accept_rule self
  end

  def pretty_print q # :nodoc:
    q.group 2, '[rule:', ']' do
      q.pp level
    end
  end

end
