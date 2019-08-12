FactoryBot.define do

  factory :item do
    name {"a"}
    description {"abcde"}
    state {"新品、未使用"}
    shipping_charges {"送料込み(出品者負担)"}
    shipping_method {"らくらくメルカリ便"}
    shipping_source_area {"北海道"}
    days_ship {"1~2日で発送"}
    price {"300"}
    user
  end

end