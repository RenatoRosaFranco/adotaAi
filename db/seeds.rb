# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "\n Start running seeds \n."

admin_user =  User.where(admin: true).first.id

Category.destroy_all
Category.create([
                    {
                      name: 'Animal',
                      description: 'Categoria relacionada a animais',
                      user_id: admin_user
                    }
                ])

animal_category = Category.where(name: 'Animal').first
Category.create([
    {
        name: 'Cães',
        description: 'Categoria de Cães',
        category_id: animal_category.id,
        user_id: admin_user
    },
    {
        name: 'Gatos',
        description: 'Categoria de Gatos',
        category_id: animal_category.id,
        user_id: admin_user
    },
    {
        name: 'Pássaros',
        description: 'Categoria de Pássaros',
        category_id: animal_category.id,
        user_id: admin_user
    },
    {
        name: 'Roedores',
        description: 'Categoria de Roedores',
        category_id: animal_category.id,
        user_id: admin_user
    }
                ])

dog_category = Category.where(name: 'Cães').first.id
Race.create([
    {
        name: 'Afegão Hound',
        description: 'Raça Afegão Hound',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Affenpinscher',
        description: 'Raça Affenpinscher',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Airedale Terrier',
        description: 'Raça Airdale Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Akita',
        description: 'Raça Akita',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'American Staffordshire Terrier',
        description: 'Raça American Staffordshire Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Basenji',
        description: 'Raça Basenji',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Basset Hound',
        description: 'Basset Hound',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Beagle',
        description: 'Raça Beagle',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Beagle Harrier',
        description: 'Raça Beagle Harrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Bearded Collie',
        description: 'Raça Bearded Collie',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Bedlington Terrier',
        description: 'Raça Bedlington Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Bichon-Frisé',
        description: 'Raça Brichon-Frisé',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Bloodhound',
        description: 'Raça Bloodhound',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Bobtail',
        description: 'Raça Bobtail',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Boiadeiro Australiano',
        description: 'Raça Boiadeiro Australiano',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Boiadeiro Bernês',
        description: 'Raça Boadeiro Bernês',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Border Collie',
        description: 'Raça Border Collie',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Border Terrier',
        description: 'Raça Border Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Borzoi',
        description: 'Raça Borzoi',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Boston Terrier',
        description: 'Raça Boston Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Boxer',
        description: 'Boxer',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Buldogue Francês',
        description: 'Raça Bulgodue Francês',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Buldogue Inglês',
        description: 'Raça Buldogue Inglês',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Bull Terrier',
        description: 'Raça Bull Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Bulmastife',
        description: 'Raça Bulmastife',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Cairn Terrier',
        description: 'Raça Cairn Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Cane Corso',
        description: 'Raça Cane Corso',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Cão de Água Português',
        description: 'Raça Cão de Água Português',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Dachshund',
        description: 'Raça Dachshund',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Dálmata',
        description: 'Raça Dálmata',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Dandie Dinmont Terrier',
        description: 'Raça Dandie Dinmonet Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Doberman',
        description: 'Raça Doberman',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Dogo Argentino',
        description: 'Raça Dogo Argentino',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Dogue Alemão',
        description: 'Raça Dogue Alemão',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Fila Brasileiro',
        description: 'Raça Fila Brasileiro',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Fox Terrier (Pelo duro e Pelo liso)',
        description: 'Raça Fox Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Foxhound Inglês',
        description: 'Raça Foxhound Inglês',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Galgo Escocês',
        description: 'Raça Galgo Escocês',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Galgo Irlandês',
        description: 'Raça Galgo Irlândês',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Golden Retriever',
        description: 'Raça Golden Retriever',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Grande Boiadeiro Suiço',
        description: 'Raça Grande Boiadeiro Suiço',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Greyhound',
        description: 'Raça Greyhound',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Grifo da Bélgica',
        description: 'Raça Grifo da Bélgica',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Afegão Hound',
        description: 'Raça Afegão Hound',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Husky Siberiano',
        description: 'Raça Husky Siberiano',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Jack Russel Terrier',
        description: 'Raça Jack Russel Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'King Charles',
        description: 'Raça King Charles',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Komondor',
        description: 'Raça Komondor',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Labradoodle',
        description: 'Raça Labradoodle',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Labrador Retriever',
        description: 'Raça Labrador Retriever',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Lakeland Terrier',
        description: 'Raça Lakeland Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Leonberger',
        description: 'Raça Leonberger',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Lhasa Apso',
        description: 'Raça Lhasa Apso',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Lulu da Pomerânia',
        description: 'Raça Lulu da Pomerânia',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Malamute do Alasca',
        description: 'Raça Malamute do Alasca',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Maltês',
        description: 'Raça Maltês',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Mastife',
        description: 'Raça Mastife',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Mastim Napolitano',
        description: 'Raça Mastim Napolitano',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Mastim Tibetano',
        description: 'Raça Mastim Tibetano',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Afegão Hound',
        description: 'Raça Afegão Hound',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Norfolk Terrier',
        description: 'Raça Norfolk Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Norwich Terrier',
        description: 'Raça Norwich Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Papillon',
        description: 'Raça Papillon',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Pastor Alemão',
        description: 'Raça Pastor Alemão',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Pastor Australiano',
        description: 'Raça Pastor Australiano',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Pinscher Miniatura',
        description: 'Raça Pinscher Miniatura',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Poodle',
        description: 'Raça Poodle',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Pug',
        description: 'Raça Pug',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Rottweiler',
        description: 'Raça Rotttweiler',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Sem Raça Definida (SRD)',
        description: 'Sem Raça Definida',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'ShihTzu',
        description: 'Raça ShihTzu',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Silky Terrier',
        description: 'Raça Silky Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Skye Terrier',
        description: 'Raça Skye Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Staffordshire Bull Terrier',
        description: 'Staffordshire Bull Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Terra Nova',
        description: 'Raça Terra Nova',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Terrier Escocês',
        description: 'Raça Terrier Escocês',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Tosa',
        description: 'Raça Tosa',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Weimaraner',
        description: 'Raça Weimaraner',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Welsh Corgi (Cardigan)',
        description: 'Raça Welsh Corgi',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Welsh Corgi (Pembroke)',
        description: 'Raça Welsh Corgi',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'West Highland White Terrier',
        description: 'Raça West Highland White Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Whippet',
        description: 'Raça Whippet',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Xoloitzcuintli',
        description: 'Raça Xoloitzcuintli',
        category_id: dog_category,
        user_id: admin_user
    },
    {
        name: 'Yorkshire Terrier',
        description: 'Raça Yorkshire Terrier',
        category_id: dog_category,
        user_id: admin_user
    },
            ])

puts "\n Finished running seeds \n."