require 'rails_helper'

describe User do

  it_behaves_like 'factorized model'
  
  # it { should define_enum_for(:role).with_values([:admin, :author, :guest]) }

end