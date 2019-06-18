class AddColumnCpfToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :cpf, :string
    add_column :profiles, :cnpj, :string
    add_column :profiles, :birthdate, :date
    add_column :profiles, :gender, :string
    add_column :profiles, :email, :string
    add_column :profiles, :phone, :string
    add_column :profiles, :cep, :string
    add_column :profiles, :address, :string
    add_column :profiles, :number, :integer
    add_column :profiles, :complement, :string
    add_column :profiles, :neighborhood, :string
    add_reference :profiles, :state, foreign_key: true
    add_reference :profiles, :city, foreign_key: true
  end
end
