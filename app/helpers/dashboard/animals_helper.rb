module Dashboard::AnimalsHelper
  def eval_boolean(field)
    (field.eql?(true)) ? 'Sim' : 'Não'
  end
end